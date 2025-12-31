package com.itn.realestate.service;

import java.util.List;

import com.itn.realestate.entity.Payment;

public interface PaymentService {

	public Payment savePayment(Payment payment);
	
	public List<Payment> getAllPayments();
	
	public Payment getPaymentById(int id);
	
	public void updatePayment(Payment payment);
	
	public void deletePayment(Payment payment);
}
