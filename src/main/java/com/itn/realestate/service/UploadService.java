package com.itn.realestate.service;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public interface UploadService {
	
	public static final String UPLOAD_DIR = "//desktop//realestate_uploads";

	public boolean uploadPropertyImage(MultipartFile[] images) throws IllegalStateException, IOException;
	
	public boolean uploadPropertyDocuments(MultipartFile[] docs) throws IllegalStateException, IOException;
}
