package com.itn.realestate.service;

import java.util.List;

import com.itn.realestate.entity.Booking;
import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

public interface BookingService {
	
	public void saveBooking(Booking booking);
	
	public List<Booking> getAllBookings();
	
	public Booking getBookingById(int id);
	
	public List<Booking> getBookingByUser(UserDetail userDetail);

	public List<Booking> getBookingByProperty(Property property);
	
	public List<Booking> getAllPropertyBookings(List<Property> properties);
	
	public void updateBooking(Booking booking);
	
	public void deleteBooking(Booking booking);
	
	
	
}
