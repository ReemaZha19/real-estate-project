package com.itn.realestate.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller   // make this class a controller component which can handle request and return response 
public class HomeController {

	@RequestMapping({"/", "/home"})
	public String openHome() {   // request handler method
		return "index";
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

}
