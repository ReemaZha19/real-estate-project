package com.itn.realestate.service;

import java.util.List;

import com.itn.realestate.entity.PropertyType;


public interface PropertyTypeService {

	public void savePropertyType(PropertyType type);
		
		public List<PropertyType> getAllProperties();
		
		public PropertyType getPropertyTypeById(int id);
		
		public void updatePropertyType(PropertyType type);
		
		public void deletePropertyType(PropertyType type); 
	
}
