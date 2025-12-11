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
		if(uploadService.uploadPropertyImage(files)) {
			
					for(int i = 0; i<files.length; i++) {
						if(i==0)
							property.setImage1(files[0].getOriginalFilename());
						else if(i==1)
							property.setImage2(files[1].getOriginalFilename());
						else if(i==2)
							property.setImage3(files[2].getOriginalFilename());
					}
			
		}else {
			return "redirect:/owner/property/add?image_upload_failed";
		}
		
		UserDetail userDetail = userDetailService.getUserByUsername(principal.getName());
		if(userDetail.getUserRole().getRole().contains("OWNER")) {
			property.setOwner(userDetail);
		}else if(userDetail.getUserRole().getRole().contains("AGENT")) {
			property.setAgent(userDetail);
		}
		
		propertyService.saveProperty(property);
		return "redirect:/owner/property/add";
	}
}
