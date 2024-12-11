<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS -->
<style>

<script>
function openImage(url) {
    window.open(url, '_blank'); 
}
</script>
</style>
</head>
<body>
<%@include file = "userindex.jsp" %>

<main>
    <div class="hero">
        
    </div>

    <h1 align="center">Gallery</h1>

    <div id="gallery" class="gallery">
        <div class="gallery-item">
            <img src="https://miro.medium.com/v2/resize:fit:1358/0*1IHR40BW_JwKNpE1.jpg" alt="Indian Dance" />
            <h3>Dance</h3>
            <p>Bharatanatyam Dancers — Awards, Gharanas and Gods</p>
            <a href="userdance">click here</a>
            
            
        </div>
        <div class="gallery-item">
            <img src="https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2022/11/16143050/Kerala-1-1600x900.jpg" alt="Indian Place" />
            <h3>Monuments</h3>
            <p>India's Best Awards 2022: The Winners Of Best Domestic Destinations.</p>
            <a href="userplace">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO8hpqpvIq3yDDdA8hCj3LwehtP9QloMvY2g&s" alt="Indian Food" />
            <h3>Food</h3>
            <p>Explore the diverse flavors of Indian food, representing the country's rich culinary heritage.</p>
            <a href="userfood">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="festival.jpeg" alt="Indian Festivals" />
            <h3>Festivals</h3>
            <p>UNESCO Intangible Cultural Heritage recognition in 2021.</p>
            <a href="userfestival">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvsIXl48vxnwQP12gj405EVG632juQB1Jdfg&s" alt="Indian Music" />
            <h3>Music</h3>
            <p>Award Name: GIMA.</p>
            <a href="usermusic">click here</a>
            
        </div>
    </div>

    <h1 align="center">Articles</h1>
    
    <div id="articles" class="articles">
        <div class="article">
            <h3>The Art of Aromas: Ittar Industry of Kannauj</h3>
            <p>An exploration of the traditional perfume-making industry in Kannauj, emphasizing the natural ingredients used and its cultural significance.</p>
            <a class="read-more-button" href="https://www.sahapedia.org/art-aromas-ittar-industry-kannauj">Read More</a>
        </div>
        <div class="article">
            <h3>Holi with Gods and Spirits: The Phagun Madai of Bastar</h3>
            <p>This article discusses the unique Holi celebrations in Bastar, Chhattisgarh, where traditional deities and tribal customs play a central role.</p><br/>
            <a class="read-more-button" href="https://www.sahapedia.org/holi-gods-and-spirits-phagun-madai-bastar#:~:text=The%20goddess%20Danteshwari%20is%20the,with%20the%20celebration%20of%20Holi.">Read More</a>
        </div>
        <div class="article">
            <h3>Kutiyattam - Surpanakhankam</h3>
            <p>Delve into Kutiyattam, a traditional Sanskrit theater form from Kerala, focusing on its storytelling and dramatic expression.</p><br/><br/>
            <a class="read-more-button" href="https://www.sahapedia.org/kutiyattam-surpanakhankam">Read More</a>
        </div>
        <div class="article">
            <h3>Manipuri Ponies and Origins of Polo</h3>
            <p>Explore the historical connection between the Manipuri pony breed and the game of polo, highlighting their significance in local traditions.</p>
            <a class="read-more-button" href="https://www.sahapedia.org/manipuri-ponies-origins-of-polo">Read More</a>
        </div>
    </div>

</main>

<footer>
    <div>
        <p>&copy; 2024 Festivals of India. All rights reserved.</p>
        <p>
            Follow us on: &nbsp;
            <a href="https://www.facebook.com/TheIndianCulture2/">Facebook</a> |
            <a href="https://x.com/_indianculture?lang=en">Twitter</a> |
            <a href="https://www.instagram.com/indian_culturee/?hl=en">Instagram</a>&nbsp; &nbsp;
             <a href="aboutus">About Us</a> &nbsp;
        <a href="contactus">Contact Us</a>
        
    </div>
    
</footer>
</body>
</html>