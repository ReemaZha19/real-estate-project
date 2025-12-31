package com.itn.realestate.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itn.realestate.entity.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer>{

}
