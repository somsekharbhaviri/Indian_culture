<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beats of India - Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }

        .header {
            background: linear-gradient(90deg, #fdd835, #ff8a65);
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header h2 {
            color: black;
            font-size: 36px;
            margin: 0;
        }

        .search-box {
            width: 250px;
        }

        .nav-links a {
            text-decoration: none;
            color: #000;
            margin-left: 20px;
        }

        .gallery-container {
            margin: 30px auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }

        .gallery-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 2px solid black;
            overflow: hidden;
            text-align: center;
        }

        .gallery-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .gallery-card h4 {
            font-size: 1.2rem;
            margin: 10px 0;
            background-color: black;
            color: white;
            padding: 5px;
            border-radius: 5px;
        }

        .gallery-card p {
            padding: 10px;
            font-size: 0.95rem;
            color: #666;
        }

        .gallery-card a {
            display: inline-block;
            margin: 10px 0;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        .gallery-card a:hover {
            text-decoration: underline;
        }

        .footer {
            background-color: #ffcc00;
            padding: 20px;
            text-align: center;
            margin-top: 30px;
        }

        .footer a {
            color: #000;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <h2>Gallery</h2>
        <div class="search-box">
            <input type="text" class="form-control" placeholder="Search Gallery" aria-label="Search">
        </div>
        <div class="nav-links">
            <a href="userhome" class="text-dark me-3">HOME</a>
            <a href="/" class="text-dark">LOGOUT</a>
        </div>
    </div>

    <!-- Gallery Section -->
    <div class="container">
        <h3 class="text-center mt-4 mb-4">Our Picture Gallery</h3>
        <div class="gallery-container">
            <c:forEach items="${gallerylist}" var="gallery">
                <div class="gallery-card">
                    <img src="displaygalleryimage?id=${gallery.id}" alt="${gallery.title}" onerror="this.src='https://via.placeholder.com/280x200?text=No+Image'">
                    <h4>${gallery.title}</h4>
                    <p>${gallery.description}</p>
                    <a href="${gallery.link}">Click Here</a>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
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
    </div>


   <script>
    document.addEventListener('DOMContentLoaded', () => {
        const searchBox = document.querySelector('.search-box input');
        const categoryCards = document.querySelectorAll('.category-card');

        searchBox.addEventListener('input', () => {
            const searchTerm = searchBox.value.toLowerCase();
            categoryCards.forEach(card => {
                const title = card.querySelector('h5').textContent.toLowerCase();
                if (title.includes(searchTerm)) {
                    card.style.display = "block"; // Show matching cards
                } else {
                    card.style.display = "none"; // Hide non-matching cards
                }
            });
        });
    });
</script></body>
</html>
