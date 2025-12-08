package com.itn.realestate.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadServiceImpl implements UploadService{

	@Override
	public boolean uploadPropertyImage(MultipartFile[] images) throws IllegalStateException, IOException{
		File uploadDir = new File(UPLOAD_DIR+File.separator+"property_image");
		if(!uploadDir.exists()) {
			uploadDir.mkdirs();
		}
		for(MultipartFile file : images) {
			File imageFile = new File(UPLOAD_DIR+File.separator+"property_image"
										+File.separator+file.getOriginalFilename());
			file.transferTo(imageFile);
			
		
		}
		return true;
	}

	@Override
	public boolean uploadPropertyDocuments(MultipartFile[] docs) throws IllegalStateException, IOException {
		File uploadDir = new File(UPLOAD_DIR+File.separator+"document_image");
		if(!uploadDir.exists()) {
			uploadDir.mkdirs();
		}
		for(MultipartFile file : docs) {
			File imageFile = new File(UPLOAD_DIR+File.separator+"document_image"
										+File.separator+file.getOriginalFilename());
			file.transferTo(imageFile);
			
		
		}
		return true;
	}

}
