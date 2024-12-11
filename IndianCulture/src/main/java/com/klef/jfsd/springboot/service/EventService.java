package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Event;


@Service
public interface EventService {
	   void saveEvent(Event event); 

	    List<Event> getUpcomingEvents();   
	    void deleteEvent(Long eventId);
	    String saveImage(MultipartFile image);
	    public Event ViewEventByID(Long eventId);

	    List<Event> getRegisteredEvents();
		
	    void registerForEvent(String eventName, int userId);
	    
	    void updateEventStatus(int registrationId, String status);
	    
	   }
	    
	    
