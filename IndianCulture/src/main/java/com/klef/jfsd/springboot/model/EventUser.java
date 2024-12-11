package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="User_register")
public class EventUser {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int event_id;
	  @ManyToOne
	    @JoinColumn(name = "user_id", nullable = false) // Assuming a `user_id` column exists in the table
	    private User user;

	    @ManyToOne
	    @JoinColumn(name = "id", nullable = false) // Assuming an `event_id` column exists in the table
	    private Event event;

	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Event getEvent() {
		return event;
	}
	public void setEvent(Event event) {
		this.event = event;
	}
	
	
}
