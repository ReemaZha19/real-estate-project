package com.itn.realestate.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itn.realestate.entity.Booking;
import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

public interface BookingRepository extends JpaRepository<Booking, Integer>{

	public List<Booking> findByUserDetail(UserDetail userDetail);
	
	public List<Booking> findByProperty(Property property);
	
	public List<Booking> findByPropertyIn(List<Property> properties);
	
}
