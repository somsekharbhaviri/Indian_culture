package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import javax.xml.stream.util.EventReaderDelegate;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.EventUser;
import com.klef.jfsd.springboot.model.Gallery;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.EventRepository;
import com.klef.jfsd.springboot.repository.EventUserRepository;
import com.klef.jfsd.springboot.repository.UserRepository;
import com.klef.jfsd.springboot.service.EventService;
import com.klef.jfsd.springboot.service.GalleryService;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController 
{
    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private EventUserRepository eventuserRepository;
    
    @Autowired
    private GalleryService galleryService;
    
    @Autowired
    private EventService eventService;
    
    @GetMapping("userregistration")
    public ModelAndView userregistration()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userregistration");
        return mv;
    }
    @PostMapping("/updateProfile")
    public ModelAndView updateProfile(@ModelAttribute User user, Model model, HttpServletRequest request) {
        // Fetch the existing user from the database using the provided ID
        User existingUser = userRepository.findById(user.getId()).orElse(null);
        ModelAndView mv = new ModelAndView("profile");
        
        if (existingUser != null) {
            // Update the existing user's fields
            existingUser.setName(user.getName());
            existingUser.setEmail(user.getEmail());
            existingUser.setMessage(user.getMessage());

            // Save the updated user back to the database
            userService.UserRegistration(existingUser);

            // Invalidate the session
            HttpSession session = request.getSession(false); // Get the current session (don't create a new one if none exists)
            if (session != null) {
                session.invalidate();  // Invalidate the session to clear it
            }

            // Create a new session and set the updated user attribute
            session = request.getSession(true);  // Create a new session
            session.setAttribute("user", existingUser);

            model.addAttribute("successMessage", "Profile updated successfully.");
        } else {
            model.addAttribute("errorMessage", "User not found.");
        }

        return mv; // Redirect to the profile page
    }

     
   
    @PostMapping("insertuser")
    public ModelAndView insertuser(HttpServletRequest request) 
    {
        String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String password = request.getParameter("upwd");
        String message = request.getParameter("umessage");
        
        User user = new User();
        user.setName(name);
        user.setEmail(email);    
        user.setPassword(password);
        user.setMessage(message);
        
        String msg = userService.UserRegistration(user);
        
        ModelAndView mv = new ModelAndView("regsuccess");
        mv.addObject("message", msg);
        
        return mv;
    }
    @GetMapping("userlogin")
    public ModelAndView userlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        // Invalidate any existing session to ensure a clean login
        HttpSession session = request.getSession(false); // Get the session if it exists, don't create a new one
        if (session != null) {
            session.invalidate();
        }
        
        mv.setViewName("userlogin");
        return mv;
    }

     
     
    @PostMapping("checkuserlogin")
    public ModelAndView checkuserlogin(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();
        
        String email = request.getParameter("uemail");
        String password = request.getParameter("upwd");
        
        User us = userService.checkuserlogin(email, password);
        
        if(us!=null)
        {
     	   
     	//session 
     	  
     	   HttpSession session = request.getSession();
     	   session.setAttribute("user",us); // employee is session variable
     	  // session.setMaxInactiveInterval(5);
     	
         mv.setViewName("userhome");
        }
        else
        {
          mv.setViewName("userlogin");
          mv.addObject("message", "Login Failed");
        } 
        
        return mv;
    }
     
    @GetMapping("userhome")
    public ModelAndView userhome(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        HttpSession session = request.getSession(false); // Don't create a new session if it doesn't exist
        if (session == null || session.getAttribute("user") == null) {
            mv.setViewName("userlogin");
            mv.addObject("message", "Please log in to access your home page.");
        } else {
            mv.setViewName("userhome");
        }
        
        return mv;
    }

    
    @GetMapping("addgallery")
    public ModelAndView addgallery() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addgallery");
        return mv;
    }
      
    @PostMapping("insertgalleryitem")
    public ModelAndView insertgalleryitem(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws Exception 
    {
        String category = request.getParameter("category");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String link = request.getParameter("link");

        byte[] bytes = file.getBytes();
        Blob imageBlob = new javax.sql.rowset.serial.SerialBlob(bytes);

        Gallery gallery = new Gallery();
        gallery.setCategory(category);
        gallery.setTitle(title);
        gallery.setDescription(description);
        gallery.setLink(link);
        gallery.setImage(imageBlob);

        String msg = galleryService.addGallery(gallery);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("gallerysuccess");
        mv.addObject("message", msg);

        return mv;
    }
      
    @GetMapping("displaygalleryitems")
    public ModelAndView displaygalleryitems() 
    {
        List<Gallery> galleryItems = galleryService.displaygalleryitems(); 
        ModelAndView mv = new ModelAndView("displaygalleryitems"); 
        mv.addObject("galleryItems", galleryItems); 
        return mv;
    }

    @GetMapping(value = "displaygalleryimage", produces = MediaType.IMAGE_JPEG_VALUE)
    @ResponseBody
    public byte[] displayGalleryImage(@RequestParam("id") Long id) throws SQLException 
    {
        Gallery galleryItem = galleryService.findById(id);
        Blob imageBlob = galleryItem.getImage();
        return imageBlob.getBytes(1, (int) imageBlob.length());
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        galleryService.deletegalleryitem(id);
        return "redirect:/displaygalleryitems";
    }


    @GetMapping("deletegalleryitem") 
    public ModelAndView deletegalleryitems()
    {
        ModelAndView mv = new ModelAndView();
        List<Gallery> gallerylist = galleryService.displaygalleryitems();
        mv.setViewName("displaygalleryitems"); 
        mv.addObject("gallerylist", gallerylist);
        return mv;
    }
    @PostMapping("/register")
    public ResponseEntity<String> registerForEvent(@RequestParam long eventId, @RequestParam int userId) {
        Optional<Event> eventOpt = eventRepository.findById(eventId);
        Optional<User> userOpt = userRepository.findById(userId);

        if (eventOpt.isPresent() && userOpt.isPresent()) {
            EventUser eu = new EventUser();
            eu.setUser(userOpt.get());
            eu.setEvent(eventOpt.get());
            eventuserRepository.save(eu);
            return ResponseEntity.ok("Registration successful");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Event or User not found");
        }
    }


    @GetMapping("status")
    public List<Event> getRegisteredEvents() {
        return eventService.getRegisteredEvents();
    }
    
    @PostMapping("/updatestatus")
    public ResponseEntity<String> updateEventStatus(@RequestParam int registrationId, @RequestParam String status) {
        eventService.updateEventStatus(registrationId, status);  // Call the service to handle the logic
        return ResponseEntity.ok("Status updated to " + status);  // Return a success response
    }
    @GetMapping("userdance")
    public ModelAndView userdance() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userdance");
        return mv;
    }
    @GetMapping("userplace")
    public ModelAndView userplace() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userplace");
        return mv;
    }
    @GetMapping("userfood")
    public ModelAndView userfood() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userfood");
        return mv;
    }
    @GetMapping("userfestival")
    public ModelAndView userfestival() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userfestival");
        return mv;
    }
    @GetMapping("usermusic")
    public ModelAndView usermusic() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("usermusic");
        return mv;
    }
    @GetMapping("userpictures") 
    public ModelAndView userpictures()
    {
        ModelAndView mv = new ModelAndView();
        List<Gallery> gallerylist = galleryService.displaygalleryitems();
        mv.setViewName("userpictures"); 
        mv.addObject("gallerylist", gallerylist);
        return mv;
    }
    
    @GetMapping("viewgallerybycategory")
    public ModelAndView  viewgallerybycategorydemo()
    {
         ModelAndView mv=new ModelAndView("viewgallerybycategory");
         return mv;
    }
    
    @PostMapping("displaygallerybycategory")
    public ModelAndView  viewgallerybycategorydemo(HttpServletRequest request)
    {
       String category = request.getParameter("category");
       
         List<Gallery> gallerylist=galleryService.viewallgallerybycategory(category);
         ModelAndView mv=new ModelAndView("displaygallerybycategory");
         mv.addObject("gallerylist",gallerylist);
         return mv;
    }
    
    
    @GetMapping("usersessionexpiry")
    public ModelAndView usersessionexpiry()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("usersessionexpiry");
      return mv;
    }
    
    @GetMapping("profile")
    public ModelAndView profile()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("profile");
      return mv;
    }

   
   }

  