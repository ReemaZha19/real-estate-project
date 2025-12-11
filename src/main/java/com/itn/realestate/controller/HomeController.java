package com.itn.realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.entity.UserRole;
import com.itn.realestate.service.PropertyService;
import com.itn.realestate.service.UserDetailService;



@Controller   // make this class a controller component which can handle request and return response 
public class HomeController {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserDetailService userDetailService;
	
	@Autowired
	private PropertyService propertyService;

	@RequestMapping({"/", "/home"})
	public String openHome(Model model) {  
		model.addAttribute("property_list", propertyService.getPropertiesByStatus("ACTIVE"));
		return "index";
	}
	
	@GetMapping("/signup")
	public String signupUser(Model model) {
		model.addAttribute("app_name", "RealEstate App");
		return "signup";
	}
	
	@PostMapping("/signup")
    public String registerUser(@ModelAttribute UserDetail userDetail) {
    	
    	if(!userDetail.getPassword().equals(userDetail.getCpassword())) {
    		return "redirect:/admin/register?password_mismatch";
    	}
    	
    	userDetail.setPassword(passwordEncoder.encode(userDetail.getPassword()));
    	UserRole userRole = new UserRole();
    	userRole.setRole(userDetail.getAuthority());
    	userDetail.setActive("1");
    	
    	userDetail.setUserRole(userRole);
    	userRole.setUserDetail(userDetail);
    	userDetailService.saveUserDetail(userDetail);
    	return "redirect:/login";
    }
	
	@GetMapping("/about")
	public String openAbout(Model model) {
		model.addAttribute("app_name", "RealEstate App");
		return "about";
	}
	
	@GetMapping("/services")
	public String openServices(Model model) {
		model.addAttribute("app_name", "RealEstate App");
		return "services";
	}
	
	@GetMapping("/contact")
	public String openContact(Model model) {
		model.addAttribute("app_name", "RealEstate App");
		return "contact";
	}
	
	@GetMapping("/welcome")
	public String redirectUser(Authentication auth) {
	    String authority = auth.getAuthorities().toString();

	    if (authority.contains("ADMIN")) {
	        return "redirect:/admin/home";
	    } else if (authority.contains("USER")) {
	        return "redirect:/user/profile";
	    } else if (authority.contains("OWNER")) {   
	        return "redirect:/owner/home";
	    } else if (authority.contains("AGENT")) {
	        return "redirect:/agent/profile";
	    } else {
	        return "redirect:/home";
	    }
	}
	
	@GetMapping("/property_detail/{id}")
	public String showPropertyDetail(@PathVariable int id, Model model) {
		model.addAttribute("property", propertyService.getPropertyById(id));
		model.addAttribute("property_list", propertyService.getPropertiesByStatus("ACTIVE"));
		
		return "property_detail";
	}
	
	@GetMapping("/similar_product")
	public String showSimilarProduct(Model model) {
	    model.addAttribute("property_list", propertyService.getAll());
	    return "similar_product"; 
	}



}
