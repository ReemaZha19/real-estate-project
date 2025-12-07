package com.itn.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.itn.realestate.dao.UserDetailRepository;
import com.itn.realestate.entity.UserDetail;
import com.itn.realestate.entity.UserRole;

@Service
public interface UserDetailService {

   
    public void saveUserDetail(UserDetail userDetail);
    
    public List<UserDetail> getAllUsers();
    
    public UserDetail getUserById(int id);
    
    public UserDetail getUserByUsername(String username);
    
    public void updateUser(UserDetail userDetail);
    
    public void deleteUser(UserDetail userDetail);

        
      
        
}