package com.itn.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itn.realestate.dao.PaymentRepository;
import com.itn.realestate.entity.Payment;



@Service
@Transactional
public class PaymentServiceImpl implements PaymentService{

	@Autowired 
	private PaymentRepository paymentRepository;

	@Override
	public Payment savePayment(Payment payment) {
		return paymentRepository.save(payment);
	}

	@Override
	public List<Payment> getAllPayments() {
		return paymentRepository.findAll();
	}

	@Override
	public Payment getPaymentById(int id) {
		return paymentRepository.findById(id).get();
		
	}

	@Override
	public void updatePayment(Payment payment) {
		paymentRepository.saveAndFlush(payment);
		
	}

	@Override
	public void deletePayment(Payment payment) {
		paymentRepository.delete(payment);
		
	}
	
}
