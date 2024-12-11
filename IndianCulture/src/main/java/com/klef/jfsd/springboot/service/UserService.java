package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.User;

@Service
public interface UserService 
{
	public String UserRegistration(User u);
	public User checkuserlogin(String email, String pwd);
	 void registerForEvent(String eventName, int userId);
	 List<Event> getRegisteredEvents();
	 
	 User getUserByEmail(String email);
}

