<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INDIAN CULTURE</title>
    <style>
 body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
}

header {
    background: linear-gradient(90deg, #fdd835, #ff8a65);
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

header h1 {
    font-size: 36px;
    margin: 0;
}

header nav a {
    color: black;
    text-decoration: none;
    margin: 0 15px;
    font-size: 20px;
    transition: color 0.3s ease;
}

header nav a:hover {
    text-decoration: underline;
}

.search-container {
    display: flex;
    align-items: center;
    border-radius: 25px;
    background-color: #ffffff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    padding: 5px;
}

.search-input {
    border: none;
    outline: none;
    font-size: 14px;
    padding: 5px 10px;
    border-radius: 25px;
    width: 150px;
    transition: width 0.3s ease;
}

.search-input:focus {
    width: 200px;
}

.search-btn {
    background: none;
    border: none;
    cursor: pointer;
    padding: 0;
}

.search-icon {
    width: 20px;
    height: 20px;
}

.hero {
    text-align: center;
    padding: 200px;
    background-image: url('https://www.entriva.com/wp-content/uploads/2023/09/india_culture.jpg');
    background-size: cover;
    color: white;
}

.hero h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.button {
    background-color: #ff6600;
    color: white;
    padding: 15px 20px;
    text-decoration: none;
    border-radius: 10px;
}

.gallery, .articles, .events {
    display: flex;
    justify-content: center;
    margin: 40px 0;
    flex-wrap: wrap;
}

.gallery-item, .article, .event {
    background-color: white;
    border: 2px solid #000;
    padding: 20px;
    width: 200px;
    margin: 10px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.gallery-item img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
}

.gallery-item h3 {
    margin: 10px 0 5px 0;
    font-size: 18px;
}

.read-more-button {
    display: inline-block;
    padding: 10px 15px;
    background-color: #ff6600;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 10px;
    transition: background-color 0.3s ease;
}

.read-more-button:hover {
    background-color: #cc5200;
}

footer {
    text-align: center;
    padding: 10px;
    background-color: #ffcc00;
    position: relative;
    bottom: 0;
    width: 100%;
}

html {
    scroll-behavior: smooth;
}

.events {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 20px;
    margin: 40px auto;
    max-width: 1200px;
}

.event {
    background-color: white;
    border: 2px solid black; /* Change the border color to your desired color */
    border-radius: 8px;
    padding: 20px;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 15%;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.event img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
    margin-bottom: 10px;
}

.event h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #333;
    font-weight: bold;
}

.event p {
    font-size: 14px;
    color: #666;
    margin-bottom: 15px;
}

.event a {
    display: inline-block;
    color: #663399;
    text-decoration: underline;
    font-size: 14px;
    margin-top: 10px;
}

.event:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
}

@media screen and (max-width: 1024px) {
    .event {
        width: 48%;
    }
}

@media screen and (max-width: 768px) {
    .event {
        width: 100%;
    }
}
</style>
</head>

<header>
    <h1>INDIAN CULTURE</h1>
    <nav>
        <a href="/">Home</a>
        <a href="#gallery">Gallery</a>
        <a href="#events">Events</a>
        
        <a href="#articles">Articles</a>
               
        
    </nav>
    <div class="search-container">
        <input type="text" placeholder="Search.." class="search-input">
        <button class="search-btn">
            <img src="https://cdn-icons-png.flaticon.com/512/622/622669.png" alt="search-icon" class="search-icon">
        </button>
    </div>
</header>

<body>
</body>
</html>
