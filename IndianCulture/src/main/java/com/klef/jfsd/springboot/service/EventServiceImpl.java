package com.klef.jfsd.springboot.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService
{
	  @Autowired
	    private EventRepository eventRepository;

	@Override
	public void saveEvent(Event event) {
		eventRepository.save(event);
		
	}

	@Override
	public List<Event> getUpcomingEvents() {
		return eventRepository.findAll(); 
	}

	@Override
	public void deleteEvent(Long eventId) {
		 eventRepository.deleteById(eventId);
		
	}

	@Override
	public String saveImage(MultipartFile image) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Event ViewEventByID(Long eventId) {
		return eventRepository.findById(eventId).get();
	}
	@Override
    public List<Event> getRegisteredEvents() {
        return eventRepository.findByRegistered(true);
    }
	
	@Override
    public void registerForEvent(String eventName, int userId) {
        // Your logic to register the user for the event
        // For example, you can fetch the event by name and save a registration record
    }

    @Override
    public void updateEventStatus(int registrationId, String status) {
        // Fetch the event by ID
        Event event = eventRepository.findById((long) registrationId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid registration ID"));

        // Update the status of the event
        event.setStatus(status);
        
        // Save the updated event back to the database
        eventRepository.save(event);
    }
		
	}