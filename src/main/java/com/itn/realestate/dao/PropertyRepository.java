package com.itn.realestate.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.PropertyType;
import com.itn.realestate.entity.UserDetail;

public interface PropertyRepository extends JpaRepository<Property, Integer>{

	public List<Property> findByName(String name);
	
	public List<Property> findByAddress(String address);
	
	public List<Property> findByPropertyType(PropertyType propertyType );
	
	public List<Property> findByOwner(UserDetail owner);
	
	public List<Property> findByAgent(UserDetail agent);
	
	public List<Property> findByStatus(String status);
	
	
}
