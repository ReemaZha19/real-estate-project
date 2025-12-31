package com.itn.realestate.entity;

import static jakarta.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="booking_tbl")
public class Booking implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name="user_id")
	private UserDetail userDetail;
	@ManyToOne
	@JoinColumn(name="property_id")
	private Property property;
	@Column(name="booking_date")
	private LocalDate bookingDate;
	private String remarks;
	private String status;
	@OneToOne(mappedBy="booking", fetch=FetchType.EAGER)
	private Payment payment;
	
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Booking(int id, UserDetail userDetail, Property property, LocalDate bookingDate, String remarks, String status, Payment payment) {
		super();
		this.id = id;
		this.userDetail = userDetail;
		this.property = property;
		this.bookingDate = bookingDate;
		this.remarks = remarks;
		this.status = status;
		this.payment = payment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	public LocalDate getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(LocalDate bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	
	
	
	
}
