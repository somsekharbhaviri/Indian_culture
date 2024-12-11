package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.User;

@Service
public interface AdminService 
{
	  public Admin checkadminlogin(String uname, String pwd);
	  public List<User> ViewAllUsers();
	  public String deleteuser(int uid);
	  public String usereventstatus(String status, int eid);

	  



}
