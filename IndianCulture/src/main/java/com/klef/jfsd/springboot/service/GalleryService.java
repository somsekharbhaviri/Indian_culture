package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Gallery;

@Service
public interface GalleryService 

{
	public String addGallery(Gallery gallery);
	 public List<Gallery> displaygalleryitems();
	 public String deletegalleryitem(Long id);
	Gallery findById(Long id);
	
	public List<Gallery> viewallgallerybycategory(String category);
}