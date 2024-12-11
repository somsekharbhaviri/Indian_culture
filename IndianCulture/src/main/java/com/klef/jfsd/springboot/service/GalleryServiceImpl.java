package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Gallery;
import com.klef.jfsd.springboot.repository.GalleryRepository;

@Service
public class GalleryServiceImpl implements GalleryService
{

	@Autowired
	private GalleryRepository galleryRepository;
	
	@Override
	public String addGallery(Gallery gallery) {
		 galleryRepository.save(gallery);
		    return "Gallery Item Added Successfully";
	}


	@Override
	public List<Gallery> displaygalleryitems() {
		return (List<Gallery>) galleryRepository.findAll();
	}

	@Override
	public String deletegalleryitem(Long id) {
	    if (galleryRepository.existsById(id)) {
	        galleryRepository.deleteById(id);
	        return "Item deleted successfully";
	    } else {
	        return "Item not found";
	    }
	}


	    @Override
	    public Gallery findById(Long id) {
	        Optional<Gallery> galleryItem = galleryRepository.findById(id);
	        return galleryItem.orElse(null);  
	    }

	    
	    @Override
		public List<Gallery> viewallgallerybycategory(String category) {
			return galleryRepository.viewallgallerybycategory(category);
		}
	   
	}