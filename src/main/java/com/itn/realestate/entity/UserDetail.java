package com.itn.realestate.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name= "user_detail_tbl")
public class UserDetail implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private int id;
	private String firstname;
	private String lastname;
	private String gender;
	@Column(unique=true)
	private String email;
	@Column(unique=true)
	private long phone;
	private String address;
	private LocalDate dob;
	@Transient
	private String authority;
	private String active;
	@Column(unique=true)
	private String username;
	private String password;
	@Transient
	private String cpassword;
	@OneToOne(mappedBy="userDetail", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private UserRole userRole;
	
	
	public UserDetail() {
		super();
	}


	public UserDetail(int id, String firstname, String lastname, String gender, String email, long phone,
			String address, LocalDate dob, String authority, String active, String username, String password,
			String cpassword, UserRole userRole) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.dob = dob;
		this.authority = authority;
		this.active = active;
		this.username = username;
		this.password = password;
		this.cpassword = cpassword;
		this.userRole = userRole;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public long getPhone() {
		return phone;
	}


	public void setPhone(long phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public LocalDate getDob() {
		return dob;
	}


	public void setDob(LocalDate dob) {
		this.dob = dob;
	}


	public String getAuthority() {
		return authority;
	}


	public void setAuthority(String authority) {
		this.authority = authority;
	}


	public String getActive() {
		return active;
	}


	public void setActive(String active) {
		this.active = active;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getCpassword() {
		return cpassword;
	}


	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}


	public UserRole getUserRole() {
		return userRole;
	}


	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
