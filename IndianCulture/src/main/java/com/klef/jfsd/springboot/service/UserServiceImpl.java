package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.Gallery;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.EventRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	
    @Autowired
	private UserRepository userRepository;
    @Autowired
	private EventRepository eventRepository;
	
	@Override
	public String UserRegistration(User u) {
		userRepository.save(u);
		return "User Registered Successfully";

	}

	@Override
	public User checkuserlogin(String email, String pwd) {
		return userRepository.checkuserlogin(email, pwd);
	}

	@Override
	public void registerForEvent(String eventName, int userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Event> getRegisteredEvents() {
		return eventRepository.findByRegistered(true);
	}
	

	 @Override
	    public User getUserByEmail(String email) {
	        return userRepository.findByEmail(email);
	    }
	

}



