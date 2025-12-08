package com.itn.realestate.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.itn.realestate.entity.Property;
import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.service.PropertyService;
import com.itn.realestate.service.PropertyTypeService;
import com.itn.realestate.service.UploadService;
import com.itn.realestate.service.UserDetailService;

@Controller
public class PropertyController {

	@Autowired
	private UploadService uploadService;
	
	@Autowired
	private UserDetailService userDetailService;
	
	@Autowired
	private PropertyService propertyService;
	
	@Autowired
	private PropertyTypeService propertyTypeService;
	
	@GetMapping("/admin/property/add")
	public String adminAddsProperty() {
		return "admin/add_property";
	}
	
	@PostMapping("/admin/property/add")
	public String adminAddsProperty(@ModelAttribute Property property) throws IllegalStateException, IOException {
		if(!uploadService.uploadPropertyImage(property.getImages())) {
			return "redirect:/admin/property/add?image_upload_failed";
		}
		
		propertyService.saveProperty(property);
		return "redirect:/admin/property/add";
	}
	
	
	@GetMapping({"/owner/property/add",  "/agent/property/add"})
	public String ownerAddsProperty(Model model, Principal principal) {
		model.addAttribute("propertyType", propertyTypeService.getAllProperties());
		String authority = userDetailService.getUserByUsername(principal.getName()).getUserRole().getRole();
		model.addAttribute("authority", authority);
		
		return "new_property";
	}
	
	@PostMapping({"/owner/property/add", "/agent/property/add"})
	public String ownerAddsProperty(@ModelAttribute Property property, Principal principal) throws IllegalStateException, IOException {

	    MultipartFile[] files = property.getImages();

	    // Upload images and get filenames
	    String[] uploadedFileNames = new String[files.length];
	    for(int i=0; i<files.length; i++){
	        uploadedFileNames[i] = files[i].getOriginalFilename();
	    }

	    uploadService.uploadPropertyImage(files); // upload files

	    // Set filenames to property
	    if(uploadedFileNames.length > 0) property.setImage1(uploadedFileNames[0]);
	    if(uploadedFileNames.length > 1) property.setImage2(uploadedFileNames[1]);
	    if(uploadedFileNames.length > 2) property.setImage3(uploadedFileNames[2]);

	    // Set owner/agent
	    UserDetail userDetail = userDetailService.getUserByUsername(principal.getName());
	    if(userDetail.getUserRole().getRole().contains("OWNER")) {
	        property.setOwner(userDetail);
	    } else if(userDetail.getUserRole().getRole().contains("AGENT")) {
	        property.setAgent(userDetail);
	    }

	    // Save property
	    propertyService.saveProperty(property);
	    return "redirect:/owner/property/add";
	}

}
