package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.Gallery;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.UserRepository;


@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	 public AdminRepository adminRepository;
	
	
    @Autowired
	private UserRepository userRepository;
	

	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
	 return adminRepository.checkadminlogin(uname, pwd);
	}



	@Override
	public List<User> ViewAllUsers() {
		return userRepository.findAll();
	}



	@Override
	public String deleteuser(int uid) {
		userRepository.deleteById(uid);
		 return "User Deleted Successfully";
	}



	@Override
	public String usereventstatus(String status, int eid) {
		// TODO Auto-generated method stub
		return null;
	}



	

	

}
