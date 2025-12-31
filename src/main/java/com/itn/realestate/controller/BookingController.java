package com.itn.realestate.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.itn.realestate.entity.Booking;
import com.itn.realestate.entity.Payment;
import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.service.BookingService;
import com.itn.realestate.service.PaymentSecurityService;
import com.itn.realestate.service.PaymentService;
import com.itn.realestate.service.PropertyService;
import com.itn.realestate.service.RealestateEmailService;
import com.itn.realestate.service.UserDetailService;

@Controller
public class BookingController {

	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private UserDetailService userDetailService;
	
	@Autowired
	private PropertyService propertyService;
	
	@Autowired
	private PaymentSecurityService paymentSecurityService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired 
	private RealestateEmailService emailService;
	
	@GetMapping("/user/book/property/{id}")
	public String addBooking(@PathVariable int id, Principal p) {
		Booking booking = new Booking();
		booking.setUserDetail(userDetailService.getUserByUsername(p.getName()));
		booking.setProperty(propertyService.getPropertyById(id));
		booking.setBookingDate(LocalDate.now());
		booking.setStatus("PROCESSING");
		booking.setRemarks("User booka a property");
		bookingService.saveBooking(booking);
		return "redirect:/user/booking/show";
		
	}
	
	
	@GetMapping("/user/booking/show")
	public String showUserBookings(Model model, Principal p) {
		UserDetail userDetail = userDetailService.getUserByUsername(p.getName());
		model.addAttribute("user_detail", userDetail);
		model.addAttribute("bookings", bookingService.getBookingByUser(userDetail));
		return "user_booking";
	}
	
	@GetMapping("/user/booking/confirm/{id}")
	public String bookingConfirmation(@PathVariable int id, Model model) {
		model.addAttribute("booking", bookingService.getBookingById(id));
		return "confirm_booking";
	}
	
	@GetMapping("/user/confirm/booking/{id}") //for payment
	public String payForBooking(@PathVariable int id, Model model) {
		Payment payment = new Payment();
		payment.setAmount(1000);
		payment.setTax_amount(1000*0.13);
		payment.setProduct_delivery_charge(0);
		payment.setProduct_service_charge(0);
		payment.setTotal_amount(1000*1.13); // total_amount = amount + tax + psc + pdc
		payment.setProduct_code("EPAYTEST");
		payment.setStatus("PENDING");
		payment.setType("ESEWA");
		payment.setTransaction_uuid(UUID.randomUUID().toString());
		payment.setSigned_field_names("total_amount,transaction_uuid,product_code");
		String message = "total_amount="+payment.getTotal_amount()+
				",transaction_uuid="+payment.getTransaction_uuid()+
				",product_code="+payment.getProduct_code();
		payment.setSignature(paymentSecurityService.generateSecret(message));
		payment.setBooking(bookingService.getBookingById(id));
		payment.setId(paymentService.savePayment(payment).getId());
		payment.setFailure_url("http://localhost:9090/user/confirm/book?fail=true&id="+payment.getId()+"&");
		payment.setSuccess_url("http://localhost:9090/user/confirm/book?id="+payment.getId()+"&");
		model.addAttribute("pay", payment);
		return "esewa_payment";
	}
	

	@GetMapping("/user/confirm/book")
	public String handleEsewaResponse(@RequestParam(defaultValue="null") String refId,
	        						@RequestParam( defaultValue="false") boolean fail,
	        						@RequestParam int id) {
	    Payment payment = paymentService.getPaymentById(id);

	    if (!fail && refId != null) {
	        payment.setStatus("COMPLETED");

	        Booking booking = payment.getBooking();
	        booking.setStatus("PROCESSING");
	        bookingService.updateBooking(booking);

	    } else {
	        payment.setStatus("FAILED");
	    }

	    paymentService.updatePayment(payment);
	    return "redirect:/user/booking/show";
	}

	
	@GetMapping("/admin/booking/process/{id}")
	public String processBooking(@PathVariable int id) {

	    Booking booking = bookingService.getBookingById(id);
	    System.out.println("Processing booking ID: " + id);

	    if ("COMPLETED".equals(booking.getPayment().getStatus())) {

	        booking.setStatus("PROCESSED");
	        bookingService.updateBooking(booking);

	        String to = booking.getUserDetail().getEmail();
	        System.out.println("Sending mail to: " + to);

	        String subject = "Your booking is confirmed!";
	        String message = String.format(
	                "Dear %s,\n\n" +
	                "Your booking (ID: %d) for the property \"%s\" has been confirmed.\n\n" +
	                "Payment Status: COMPLETED\n\n" +
	                "We will contact you shortly to schedule your visit.\n\n" +
	                "Regards,\n" +
	                "RealEstate Team",
	                booking.getUserDetail().getFirstname(),
	                booking.getId(),
	                booking.getProperty().getName()
	        );

	        emailService.sendMail(to, subject, message);
	        System.out.println("Mail sent successfully.");
	    }

	    return "redirect:/admin/booking/show?processed=true";
	}

	@GetMapping("/admin/booking/show")
	public String showBookings(Model model) {
		model.addAttribute("booking_list", bookingService.getAllBookings());
		return "admin/admin_booking";
	}

	
}
