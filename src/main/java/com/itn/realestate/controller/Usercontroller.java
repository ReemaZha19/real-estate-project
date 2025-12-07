package com.itn.realestate.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.service.UserDetailService;

@Controller
public class Usercontroller {
	
	@Autowired
	private UserDetailService userDetailService;
	
	@GetMapping("/user/profile")
	public String userHome(Model model, Principal principal) {
		String username = principal.getName();
		UserDetail userDetail = userDetailService.getUserByUsername(username);
		model.addAttribute("user_detail", userDetail);
		return "user_profile";
		
	}
	

}
