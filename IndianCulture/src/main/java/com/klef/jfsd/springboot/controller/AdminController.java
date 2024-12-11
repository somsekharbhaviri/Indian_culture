package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.Gallery;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.EventUserRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EventService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
  private AdminService adminService;
	
	 @Autowired
     private EventService eventService;
	@Autowired
	private EventUserRepository eventUserRepository;
	
	
	 @GetMapping("/")
	  public ModelAndView home()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("home");
	    return mv;
	  }
     
	 
	 @GetMapping("adminlogin")
	 public ModelAndView adminlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
	 
	 @PostMapping("checkadminlogin")
	     public ModelAndView checkadminlogin(HttpServletRequest request)
	     {
	    	 ModelAndView mv = new ModelAndView();
	    	 
	       String auname = request.getParameter("auname");
	       String apwd = request.getParameter("apwd");
	       
	       Admin admin = adminService.checkadminlogin(auname, apwd);
	       
	       if(admin!=null)
	       {
	    	   mv.setViewName("adminhome");   
	    	  
	       }
	       else
	       {
	    	   mv.setViewName("adminloginfail");
	    	   mv.addObject("message", "Login Failed");
	       }
	       return mv;
	     }
	 
	 @GetMapping("aboutus")
	  public ModelAndView aboutus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("aboutus");
	    return mv;
	  }
	 
	 @GetMapping("navbar")
	 public ModelAndView navbar()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("navbar");
       return mv;
     }
	 
	  @GetMapping("contactus")
	  public ModelAndView contactus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("contactus");
	    return mv;
	  }
	  @GetMapping("viewallregisteredusers")
	  public ModelAndView viewallregisteredusers()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallregisteredusers");
	    mv.addObject("users", eventUserRepository.findAll());
	    return mv;
	  }
	  
	     

     @GetMapping("adminhome")
        public ModelAndView adminhome()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("adminhome");
          
          return mv;	
        }
 
     @GetMapping("viewallusers") 
     public ModelAndView viewAllUsers() {
         ModelAndView mv = new ModelAndView();
         List<User> userList = adminService.ViewAllUsers();
         mv.setViewName("viewusers");
         mv.addObject("userList", userList);
        
         return mv;
     }
     
     @GetMapping("deletee")
     public String deleteoperation(@RequestParam("id") int uid)
     {
    	 adminService.deleteuser(uid);
    	 return "redirect:/deleteuser";
     }
     
     
     @GetMapping("deleteuser") 
     public ModelAndView deleteuser() {
         ModelAndView mv = new ModelAndView();
         List<User> userList = adminService.ViewAllUsers();
         mv.setViewName("viewusers");
         mv.addObject("userList", userList);
        
         return mv;
     }
     
     @GetMapping("/addevent")
     public String showAddEventForm() {
         return "addevent";
     }
   
     @PostMapping("/addevent")
     public ModelAndView addEvent(@RequestParam("image") MultipartFile image, @Validated Event event, BindingResult bindingResult) throws IOException {
         ModelAndView modelAndView = new ModelAndView("addevent");
         byte[] imageBytes = image.getBytes(); // Convert MultipartFile to byte array
         event.setImage(imageBytes); // Set the byte array image to the event
         eventService.saveEvent(event);
         modelAndView.setViewName("redirect:/events");
         return modelAndView;
     }

     @GetMapping("/events")
     public ModelAndView showUpcomingEvents() {
         ModelAndView modelAndView = new ModelAndView("viewallevents");
         modelAndView.addObject("viewallevents", eventService.getUpcomingEvents());
         return modelAndView;
     }

     
     @GetMapping("/userevents")
     public ModelAndView userevents() {
         ModelAndView modelAndView = new ModelAndView("userevents");
         modelAndView.addObject("userevents", eventService.getUpcomingEvents());
         return modelAndView;
     }

     
     @GetMapping("/deleteEvent")
     public String deleteEvent(@RequestParam("id") Long eventId) {
         eventService.deleteEvent(eventId);  
         return "redirect:/events";
     } 
     
     @GetMapping(value = "displayeventimage", produces = MediaType.IMAGE_JPEG_VALUE)
     @ResponseBody
     public byte[] displayGalleryImage(@RequestParam("id") Long eventId) throws SQLException, IOException {
         Event event = eventService.ViewEventByID(eventId);
         byte[] imageBlob = event.getImage();
         return imageBlob;
     }

     @GetMapping("/map")
     public String showMap() {
         return "map";
     }
     
     @PostMapping("/registerEvent")
     @ResponseBody
     public ResponseEntity<String> registerEvent(@RequestParam("id") Long eventId) {
         Event event = eventService.ViewEventByID(eventId);
         if (event != null) {
             event.setRegistered(true); // Assuming you have a "registered" field
             eventService.saveEvent(event);
             return ResponseEntity.ok("Registered");
         }
         return ResponseEntity.status(404).body("Event not found");
     }

     @GetMapping("usereventstatus") 
     public ModelAndView usereventstatus()
     {
       ModelAndView mv = new ModelAndView();
       List<User> uslist = adminService.ViewAllUsers();
       mv.setViewName("usereventstatus"); 
       mv.addObject("emplist",uslist);
       return mv;
     }
     
     
     @GetMapping("updatestatus")
     public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
     {
      adminService.usereventstatus(status, eid);
      return "redirect:/usereventstatus";
       
     }
}