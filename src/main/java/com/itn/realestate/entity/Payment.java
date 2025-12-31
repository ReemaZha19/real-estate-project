package com.itn.realestate.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name="Payment_tbl")
public class Payment implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="payment_id")
	private int id;
	private String type;
	private String status;
	@OneToOne
	@JoinColumn(name="booking_id")
	private Booking booking;
	private double amount;
	private double tax_amount;
	private double product_service_charge;
	private double product_delivery_charge;
	private double total_amount;	
	private String transaction_uuid;
	@Transient
	private String product_code;
	@Transient
	private String signed_field_names;
	@Transient
	private String signature;
	@Transient
	private String success_url;
	@Transient
	private String failure_url;
	
	public Payment() {
		super();
	}


	public Payment(int id, String type, String status, Booking booking, double amount, double tax_amount,
			double product_service_charge, double product_delivery_charge, double total_amount, String transaction_uuid,
			String product_code, String signed_field_names, String signature, String success_url, String failure_url) {
		super();
		this.id = id;
		this.type = type;
		this.status = status;
		this.booking = booking;
		this.amount = amount;
		this.tax_amount = tax_amount;
		this.product_service_charge = product_service_charge;
		this.product_delivery_charge = product_delivery_charge;
		this.total_amount = total_amount;
		this.transaction_uuid = transaction_uuid;
		this.product_code = product_code;
		this.signed_field_names = signed_field_names;
		this.signature = signature;
		this.success_url = success_url;
		this.failure_url = failure_url;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}

	public Booking getBooking() {
		return booking;
	}
	
	public void setBooking(Booking booking) {
		this.booking = booking;
	}


	public double getAmount() {
		return amount;
	}


	public void setAmount(double amount) {
		this.amount = amount;
	}


	public double getTax_amount() {
		return tax_amount;
	}


	public void setTax_amount(double tax_amount) {
		this.tax_amount = tax_amount;
	}


	public double getProduct_service_charge() {
		return product_service_charge;
	}


	public void setProduct_service_charge(double product_service_charge) {
		this.product_service_charge = product_service_charge;
	}


	public double getProduct_delivery_charge() {
		return product_delivery_charge;
	}


	public void setProduct_delivery_charge(double product_delivery_charge) {
		this.product_delivery_charge = product_delivery_charge;
	}


	public double getTotal_amount() {
		return total_amount;
	}


	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}


	public String getTransaction_uuid() {
		return transaction_uuid;
	}


	public void setTransaction_uuid(String transaction_uuid) {
		this.transaction_uuid = transaction_uuid;
	}


	public String getProduct_code() {
		return product_code;
	}


	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}


	public String getSigned_field_names() {
		return signed_field_names;
	}


	public void setSigned_field_names(String signed_field_names) {
		this.signed_field_names = signed_field_names;
	}


	public String getSignature() {
		return signature;
	}


	public void setSignature(String signature) {
		this.signature = signature;
	}


	public String getSuccess_url() {
		return success_url;
	}


	public void setSuccess_url(String success_url) {
		this.success_url = success_url;
	}


	public String getFailure_url() {
		return failure_url;
	}


	public void setFailure_url(String failure_url) {
		this.failure_url = failure_url;
	}


	
	
	
	
	
	
	

}
