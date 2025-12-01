package com.itn.realestate.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="property_type_table")
public class PropertyType implements Serializable{
	
	private static final long serialVersionUID = 23623909L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="property_type_id")
	private int id;
	@Column(name="name", unique=true, nullable=false)
	private String name;
	private String description;
	private String enable;
	

	public PropertyType() {
		super();
	}


	public PropertyType(int id, String name, String description, String enable) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.enable = enable;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getEnable() {
		return enable;
	}


	public void setEnable(String enable) {
		this.enable = enable;
	}
	
	
	
	
	

}
