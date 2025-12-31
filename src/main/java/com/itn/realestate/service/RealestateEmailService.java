package com.itn.realestate.service;

import java.io.File;

public interface RealestateEmailService {
	
	public boolean sendMail(String to, String subject, String message);
	
	public boolean sendMail(String to, String subject, String message, File file);
}
