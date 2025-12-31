package com.itn.realestate.service;

import java.util.List;

import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

public interface PropertyService {

	public Property saveProperty(Property property);
	
	public List<Property> getAllProperties();
	
	public List<Property> getPropertiesByName(String name);
	
	public List<Property> getPropertiesByAddress(String address);
	
	public List<Property> getPropertiesByUser(UserDetail userDetail);
	
	public List<Property> getPropertiesByStatus(String status);
	
	public Property getPropertyById(int id);
	
	public Property updateProperty(Property property);
	
	public Property deleteProperty(Property property);

	public List<Property> getAll();
	



	

	
	
	
}

