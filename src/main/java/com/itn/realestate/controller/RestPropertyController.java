package com.itn.realestate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itn.realestate.entity.Property;
import com.itn.realestate.service.PropertyService;

@RestController
@RequestMapping("/api/property")
public class RestPropertyController {
	
	@Autowired
	private PropertyService propertyService;
	
	@PostMapping
	public Property addProperty(@RequestBody Property property) {
		Property prop = propertyService.saveProperty(property);
		return prop;
		
	}
	
	@GetMapping
	public List<Property> listAllProperties(){
		return propertyService.getAllProperties();
	}
	
	@GetMapping("/{id}")  ///api/property/1
	public Property getPropertyById(@PathVariable int id){
		return propertyService.getPropertyById(id);
	}
	
	@PutMapping("/{id}") //update
	public Property updateProperty(@PathVariable int id, @RequestBody Property property) {
		Property prop = propertyService.getPropertyById(id);
		prop.setAddress(property.getAddress());
		prop.setAgent(property.getAgent());
		prop.setDescription(property.getDescription());
		prop.setImage1(property.getImage1());
		prop.setImage2(property.getImage2());
		prop.setImage3(property.getImage3());
		prop.setName(property.getName());
		prop.setOwner(property.getOwner());
		prop.setPrice(property.getPrice());
		prop.setPropertyType(property.getPropertyType());
		prop.setStatus(property.getStatus());
		
		return propertyService.updateProperty(prop);
		
	}
	
	@DeleteMapping("/{id}")
	public Property deleteProperty(@PathVariable int id) {
		Property prop = propertyService.getPropertyById(id);
		return propertyService.deleteProperty(prop);
	}
}
