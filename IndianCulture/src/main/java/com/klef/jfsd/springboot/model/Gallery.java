package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Gallery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "gallery_id", nullable = false)
    private Long id;

    @Column(name = "gallery_category", nullable = false, length = 100)
    private String category;

    @Column(name = "gallery_title", nullable = false, length = 100)
    private String title;

    @Column(name = "gallery_desc", nullable = false, length = 500)
    private String description;

    @Column(name = "gallery_link", nullable = false)
    private String link;

    @Lob
    @Column(name = "gallery_image", nullable = false)
    private Blob image;

    public Long getId() {
        return id;
    }
    

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Blob getImage() {
        return image;
    }

    public void setImage(Blob image) {
        this.image = image;
    }
}
