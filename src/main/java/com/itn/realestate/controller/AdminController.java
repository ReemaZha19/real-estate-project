package com.itn.realestate.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.entity.UserRole;
import com.itn.realestate.service.UserDetailService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserDetailService userDetailService;
  

    @GetMapping("/home")
    public String openDashboard(Model model, Principal p) {
        model.addAttribute("username", p.getName());
        return "admin/dashboard";
    }

    @GetMapping("/register")
    public String userRegistration() {
        return "admin/signup";
    }
    
    @PostMapping("/register")
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
    	return "redirect:/admin/register";
    }

    
}
