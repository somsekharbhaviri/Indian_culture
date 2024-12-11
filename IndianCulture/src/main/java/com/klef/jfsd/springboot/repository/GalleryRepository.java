package com.klef.jfsd.springboot.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Gallery;

@Repository
public interface GalleryRepository extends JpaRepository<Gallery, Long>
{
	 Optional<Gallery> findById(Long id);
	 @Query("from Gallery g where g.category=?1")
	   public List<Gallery> viewallgallerybycategory(String category);
}
