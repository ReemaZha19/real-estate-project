package com.itn.realestate.service;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Service;



@Service
public class PaymentSecurityServiceImpl implements PaymentSecurityService{

	@SuppressWarnings("deprecation")
	@Override
	public String generateSecret(String message) {
		
		try {
			 String secret = "8gBm/:&EnhH.1/q";
			 Mac sha256_HMAC = Mac.getInstance("HmacSHA256");
			 SecretKeySpec secret_key = new SecretKeySpec(secret.getBytes(),"HmacSHA256");
			 sha256_HMAC.init(secret_key);
			 String hash = Base64.encodeBase64String(sha256_HMAC.doFinal(message.getBytes()));
			 return hash;
			 }
			 catch (Exception e){
			 System.out.println("Error");
			 }
		return null;
	}

}
