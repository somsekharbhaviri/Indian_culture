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
    window.open(url, '_blank'); // Opens the image in a new tab
}
</script>
</style>
</head>
<body>
<%@include file = "index.jsp" %>

<main>
    <div class="hero">
        <h2>Explore the Vibrant Tapestry of Indian Culture</h2>
        <a href="navbar" class="button">Start your Journey</a>
    </div>

    <h1 align="center">Gallery</h1>

    <div id="gallery" class="gallery">
        <div class="gallery-item">
            <img src="https://miro.medium.com/v2/resize:fit:1358/0*1IHR40BW_JwKNpE1.jpg" alt="Indian Dance" />
            <h3>Indian Dance</h3>
            <p>Bharatanatyam Daners — Awards, Gharanas and Gods</p>
            <a href="userlogin">click here</a>
            
            
        </div>
        <div class="gallery-item">
            <img src="https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2022/11/16143050/Kerala-1-1600x900.jpg" alt="Indian Place" />
            <h3>Indian Place</h3>
            <p>India's Best Awards 2022: The Winners Of Best Domestic Destinations.</p>
            <a href="userlogin">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO8hpqpvIq3yDDdA8hCj3LwehtP9QloMvY2g&s" alt="Indian Food" />
            <h3>Indian Food</h3>
            <p>Explore the diverse flavors of Indian food, representing the country's rich culinary heritage.</p>
            <a href="userlogin">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="festival.jpeg" alt="Indian Festivals" />
            <h3>Indian Festivals</h3>
            <p>UNESCO Intangible Cultural Heritage recognition in 2021.</p>
            <a href="userlogin">click here</a>
            
        </div>
        <div class="gallery-item">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvsIXl48vxnwQP12gj405EVG632juQB1Jdfg&s" alt="Indian Music" />
            <h3>Indian Music</h3>
            <p>Award Name: GIMA.</p>
            <a href="userlogin">click here</a>
            
        </div>
    </div>

    <h1 align="center">Articles</h1>
    
    <div id="articles" class="articles">
        <div class="article">
            <h3>The Art of Aromas: Ittar Industry of Kannauj</h3>
            <p>An exploration of the traditional perfume-making industry in Kannauj, emphasizing the natural ingredients used and its cultural significance.</p>
            <a class="read-more-button" href="userlogin">Read More</a>
        </div>
        <div class="article">
            <h3>Holi with Gods and Spirits: The Phagun Madai of Bastar</h3>
            <p>This article discusses the unique Holi celebrations in Bastar, Chhattisgarh, where traditional deities and tribal customs play a central role.</p><br/>
            <a class="read-more-button" href="userlogin">Read More</a>
        </div>
        <div class="article">
            <h3>Kutiyattam - Surpanakhankam</h3>
            <p>Delve into Kutiyattam, a traditional Sanskrit theater form from Kerala, focusing on its storytelling and dramatic expression.</p><br/><br/>
            <a class="read-more-button" href="userlogin">Read More</a>
        </div>
        <div class="article">
            <h3>Manipuri Ponies and Origins of Polo</h3>
            <p>Explore the historical connection between the Manipuri pony breed and the game of polo, highlighting their significance in local traditions.</p>
            <a class="read-more-button" href="userlogin">Read More</a>
        </div>
    </div>
    
        <h1 align="center">Events</h1>
    
    <div id="events" class="events">
    <div class="event">
        <h3>The Essence of Kannauj: Ittar Crafting Workshop</h3>
        <p>Experience traditional perfume-making techniques with hands-on sessions and artisan demonstrations.</p>
            <a  href="userlogin">Register</a>
    </div>
    <div class="event">
        <h3>Colors and Spirits: A Tribal Holi Celebration</h3>
        <p>Celebrate the Phagun Madai festival with tribal dances, rituals, and cultural exhibits from Bastar.</p>
            <a  href="userlogin">Register</a>
    </div>
    <div class="event">
        <h3>Kutiyattam Theater Night</h3>
        <p>Discover the traditional Sanskrit theater of Kerala through a performance of Surpanakhankam.</p>
            <a  href="userlogin">Register</a>
    </div>
    <div class="event">
        <h3>Polo Origins: Manipuri Ponies Exhibition</h3>
        <p>Explore the connection between Manipuri ponies and the history of polo through an engaging exhibition.</p>
            <a  href="userlogin">Register</a>
    </div>
</div>
    

</main>

<footer>
    <p>&copy; Copyright 2024 Indian Culture and Heritage, All rights Reserved.</p>
            <a href="aboutus">About Us</a> &nbsp;
        <a href="contactus">Contact Us</a>
    
</footer>
</body>
</html>
