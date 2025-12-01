package com.itn.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itn.realestate.dao.UserDetailRepository;
import com.itn.realestate.entity.UserDetail;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserDetailServiceImpl implements UserDetailService{

	@Autowired
	private UserDetailRepository userDetailRepository;
	
	@Override
	public void saveUserDetail(UserDetail userDetail) {
		userDetailRepository.save(userDetail);
		
	}

	@Override
	public List<UserDetail> getAllUsers() {	
		return userDetailRepository.findAll();
	}

	@Override
	public UserDetail getUserById(int id) {
		return userDetailRepository.findById(id).get();
	}

	@Override
	public UserDetail getUserByUsername(String username) {
		return userDetailRepository.findByUsername(username);
	}

	@Override
	public void updateUser(UserDetail userDetail) {
		userDetailRepository.save(userDetail);
		
	}

	@Override
	public void deleteUser(UserDetail userDetail) {
		userDetailRepository.delete(userDetail);
		
	}

}
