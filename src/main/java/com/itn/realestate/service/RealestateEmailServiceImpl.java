package com.itn.realestate.service;

import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class RealestateEmailServiceImpl implements RealestateEmailService {
	
	private static final Logger logger = Logger.getLogger("Email Service");

	@Autowired
	private JavaMailSender javaMailSender; 
	
	@Override
	public boolean sendMail(String to, String subject, String message) {
		try {
			SimpleMailMessage mail = new SimpleMailMessage();
			mail.setFrom("jharim000@gmail.com");
			mail.setTo(to);
			mail.setSubject(subject);
			mail.setText(message);
			javaMailSender.send(mail);
		}catch(Exception e) {
			logger.log(Level.SEVERE, "Email couldn't be send", e);
			return false;
		}
		return true;
	}

	@Override
	public boolean sendMail(String to, String subject, String message, File file) {
//		try {
//			
//			MimeMailMessage mail = new MimeMailMessage();
//			mail.setForm("jharim000@gmail.com");
//			mail.setText(to);
//			mail.setSubject(subject);
//			mail.setMessage(message);
//			javaMailSender.send(mail);
//		}catch(Exception e) {
//			Logger.log("SEVERE", "Email couldn't be send", e);
//			return false;
//		}
		return true;
	}

}
