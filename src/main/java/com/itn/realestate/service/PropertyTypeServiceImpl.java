package com.itn.realestate.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itn.realestate.dao.PropertyTypeRepository;
import com.itn.realestate.entity.PropertyType;

@Service
@Transactional
public class PropertyTypeServiceImpl implements PropertyTypeService{
	
	private final PropertyTypeRepository propertyTypeRepository;
	

	public PropertyTypeServiceImpl(PropertyTypeRepository propertyTypeRepository) {
		this.propertyTypeRepository = propertyTypeRepository;
	}

	@Override
	public void savePropertyType(PropertyType type) {
		propertyTypeRepository.save(type);
		
	}

	@Override
	public List<PropertyType> getAllProperties() {
		List<PropertyType> propertyList = propertyTypeRepository.findAll();
		return propertyList;
	}

	@Override
	public PropertyType getPropertyTypeById(int id) {
		Optional<PropertyType> type = propertyTypeRepository.findById(id);
		if(type.isEmpty()) 
			return new PropertyType();  //if empty return default object
			return type.get(); //or else return the object by extracting it from the optional
		
		
	}

	@Override
	public void updatePropertyType(PropertyType type) {
		propertyTypeRepository.save(type);
		
	}

	@Override
	public void deletePropertyType(PropertyType type) {
		propertyTypeRepository.delete(type);
		
	}

	@Override
	public Object findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
