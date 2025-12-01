package com.itn.realestate.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.itn.realestate.entity.PropertyType;

@Repository
public interface PropertyTypeRepository  extends JpaRepository<PropertyType, Integer>{
	
	public PropertyType findByName(String name);
	
	public List<PropertyType> findByEnable(String enable);

	

}
