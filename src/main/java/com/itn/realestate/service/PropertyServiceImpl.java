package com.itn.realestate.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class PropertyServiceImpl implements PropertyService{

	@Override
	public void saveProperty(Property property) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Property> getAllProperties() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Property> getPropertiesByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Property> getPropertiesByAddress(String address) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Property> getPropertiesByUser(UserDetail userDetail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Property> getPropertiesByStatus(String status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Property getPropertyById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProperty(Property property) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProperty(Property property) {
		// TODO Auto-generated method stub
		
	}

}
