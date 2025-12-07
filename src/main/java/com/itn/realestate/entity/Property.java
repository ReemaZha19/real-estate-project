package com.itn.realestate.entity;

import java.io.Serializable;
import java.util.HashMap;


import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name="property_tbl")
public class Property implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="prop_id")
	private int id;
	private String name;
	private String address;
	@ManyToOne
	@JoinColumn(name="prop_type_id")
	private PropertyType propertyType;
	private String description;
	private double price;
	private HashMap<String, String> features;
	@ManyToOne
	@JoinColumn(name="owner_id")
	private UserDetail owner;
	@ManyToOne
	@JoinColumn(name="agent_id")
	private UserDetail agent;
	@Transient
	private MultipartFile[] images;
	private String image1;
	private String image2;
	private String image3;
	private String status;
	
	
	
	public Property() {
		super();
	}



	public Property(int id, String name, String address, PropertyType propertyType, String description, double price,
			HashMap<String, String> features, UserDetail owner, UserDetail agent, MultipartFile[] images, String image1,
			String image2, String image3, String status) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.propertyType = propertyType;
		this.description = description;
		this.price = price;
		this.features = features;
		this.owner = owner;
		this.agent = agent;
		this.images = images;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.status = status;
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



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public PropertyType getPropertyType() {
		return propertyType;
	}



	public void setPropertyType(PropertyType propertyType) {
		this.propertyType = propertyType;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public HashMap<String, String> getFeatures() {
		return features;
	}



	public void setFeatures(HashMap<String, String> features) {
		this.features = features;
	}



	public UserDetail getOwner() {
		return owner;
	}



	public void setOwner(UserDetail owner) {
		this.owner = owner;
	}



	public UserDetail getAgent() {
		return agent;
	}



	public void setAgent(UserDetail agent) {
		this.agent = agent;
	}



	public MultipartFile[] getImages() {
		return images;
	}



	public void setImages(MultipartFile[] images) {
		this.images = images;
	}



	public String getImage1() {
		return image1;
	}



	public void setImage1(String image1) {
		this.image1 = image1;
	}



	public String getImage2() {
		return image2;
	}



	public void setImage2(String image2) {
		this.image2 = image2;
	}



	public String getImage3() {
		return image3;
	}



	public void setImage3(String image3) {
		this.image3 = image3;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	
	

}
