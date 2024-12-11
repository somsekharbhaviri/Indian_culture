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

        .gallery, .articles {
            display: flex;
            justify-content: center;
            margin: 40px 0;
            flex-wrap: wrap; 
        }

        .gallery-item, .article {
            background-color: white;
            border: 2px solid #000;
            padding: 20px;
            width: 200px;
            margin: 10px; 
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center; /* Center align text */
        }

        .gallery-item img {
            max-width: 100%;
            height: auto;
            border-radius: 5px; 
        }
        
.profile-container {
    display: flex;
    align-items: center;
}

.profile-icon {
    width: 30px; /* Adjust size */
    height: 30px;
    border-radius: 50%;
    border: 2px solid #000;
    margin-left: 15px;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.profile-icon:hover {
    transform: scale(1.1);
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
    </style>
</head>

<header>
    <h1>INDIAN CULTURE</h1>
    <nav>
        <a href="/userhome">Home</a>
        <a href="#gallery">Gallery</a>
        <a href="userevents">Event</a>
        <a href="map">Map</a>
        <a href="#articles">Articles</a>        
        <a href="/">Logout</a>
    </nav>
    
    <div class="profile-container">
         <h3 style="color: black;">Hello, ${user.name}!</h3>
    
        <a href="profile">
            <img src="https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png" alt="Profile" class="profile-icon">
        </a>
    </div>
</header>
<body> 
</body>
</html>