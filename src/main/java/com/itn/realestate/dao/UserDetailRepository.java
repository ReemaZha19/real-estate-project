package com.itn.realestate.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.itn.realestate.entity.UserDetail;

@Repository
public interface UserDetailRepository extends JpaRepository<UserDetail, Integer>{
	
	public List<UserDetail> findByGender(String gender);
	
	public UserDetail findByUsername(String username);
	
	

}
