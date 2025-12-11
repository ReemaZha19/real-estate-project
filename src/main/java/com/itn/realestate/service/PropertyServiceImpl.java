package com.itn.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itn.realestate.dao.PropertyRepository;
import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class PropertyServiceImpl implements PropertyService{

	@Autowired
	private PropertyRepository propertyRepository;
	
	@Override
	public void saveProperty(Property property) {
		propertyRepository.save(property);
		
	}

	@Override
	public List<Property> getAllProperties() {
		return propertyRepository.findAll();
	}

	@Override
	public List<Property> getPropertiesByName(String name) {
		return propertyRepository.findByName(name) ;
	}

	@Override
	public List<Property> getPropertiesByAddress(String address) {
		return propertyRepository.findByAddress(address);
	}

	@Override
	public List<Property> getPropertiesByUser(UserDetail userDetail) {
		if(userDetail.getUserRole().getRole().contains("AGENT"))
		return propertyRepository.findByAgent(userDetail);
		return propertyRepository.findByOwner(userDetail);
	}

	@Override
	public List<Property> getPropertiesByStatus(String status) {
		return propertyRepository.findByStatus(status);
	}

	@Override
	public Property getPropertyById(int id) {
		
		return propertyRepository.findById(id).get();
	}

	@Override
	public void updateProperty(Property property) {
		propertyRepository.save(property);
		
	}

	@Override
	public void deleteProperty(Property property) {
		propertyRepository.delete(property);
		
	}

	@Override
	public List<Property> getAll() {
	    return propertyRepository.findAll();
	}

	


}
