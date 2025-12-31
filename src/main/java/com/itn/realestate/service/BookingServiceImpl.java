package com.itn.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itn.realestate.dao.BookingRepository;
import com.itn.realestate.entity.Booking;
import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class BookingServiceImpl implements BookingService{

	@Autowired
	private BookingRepository bookingRepository;
	
	@Override
	public void saveBooking(Booking booking) {
		bookingRepository.save(booking);
		
	}

	@Override
	public List<Booking> getAllBookings() {
		return bookingRepository.findAll();
	}

	@Override
	public Booking getBookingById(int id) {
		return bookingRepository.findById(id).get();
	}

	@Override
	public List<Booking> getBookingByUser(UserDetail userDetail) {
		return bookingRepository.findByUserDetail(userDetail);
	}

	@Override
	public List<Booking> getBookingByProperty(Property property) {
		return bookingRepository.findByProperty(property);
	}

	@Override
	public List<Booking> getAllPropertyBookings(List<Property> properties) {
		return bookingRepository.findByPropertyIn(properties);
	}

	@Override
	public void updateBooking(Booking booking) {
		bookingRepository.save(booking);
		
	}

	@Override
	public void deleteBooking(Booking booking) {
		bookingRepository.delete(booking);
		
	}

}
