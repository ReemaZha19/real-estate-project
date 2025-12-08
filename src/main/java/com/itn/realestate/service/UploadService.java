package com.itn.realestate.service;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public interface UploadService {
	
	public static final String UPLOAD_DIR = "/Users/akashkumarjha/SpringBoot_Workspace/workspace-spring-tools-for-eclipse-4.32.2.RELEASE/property_images/";

	public boolean uploadPropertyImage(MultipartFile[] images) throws IllegalStateException, IOException;
	
	public boolean uploadPropertyDocuments(MultipartFile[] docs) throws IllegalStateException, IOException;
}
