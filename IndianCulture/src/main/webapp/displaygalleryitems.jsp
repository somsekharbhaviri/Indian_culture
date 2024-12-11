<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            font-size: 24px;
            color: #333;
        }

        /* Container to hold all cards */
        .gallery-container {
            display: flex;
            justify-content: center;
            margin: 40px 0;
            flex-wrap: wrap;
            gap: 20px; /* Space between cards */
        }

        /* Card styling */
        .gallery-card {
            background-color: white;
            border: 2px solid #000;
            width: 220px; /* Width to fit content */
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            overflow: hidden; /* Prevent overflow */
            font-family: Arial, sans-serif;
        }

        /* Image styling to display within the card */
        .gallery-card img {
            width: 100%; /* Fit image to card width */
            height: 150px; /* Fixed height for consistency */
            object-fit: cover; /* Crop image if necessary */
        }

        /* Title styling */
        .gallery-card h4 {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0 5px 0;
            color: #333;
        }

        /* Description styling */
        .gallery-card p {
            font-size: 14px;
            color: #666;
            padding: 0 10px;
            margin: 5px 0 15px;
        }

        /* Links styling */
        .gallery-card a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            font-size: 14px;
            margin-bottom: 10px;
            display: block; /* Each link on a new line */
        }

        .gallery-card a:hover {
            text-decoration: underline;
        }

        /* Delete button styling */
        .delete-button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 8px 15px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
            margin: 5px 0;
        }

        .delete-button:hover {
            background-color: #ff1a1a;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <h3>Gallery</h3>
    
    <div class="gallery-container">
        <c:forEach items="${galleryItems}" var="galleryItem">
            <div class="gallery-card">
<img src="displaygalleryimage?id=${galleryItem.id}" alt="${galleryItem.title}" onerror="this.src='https://via.placeholder.com/220x150?text=No+Image'">
                
                <h4><c:out value="${galleryItem.title}"/></h4>
                
                <p><c:out value="${galleryItem.description}"/></p>
                
                <a href="<c:url value='${galleryItem.link}'/>">click here</a>
                <a href="<c:url value='delete?id=${galleryItem.id}'/>">Delete</a>
                
                
            </div>
        </c:forEach>
    </div>
</body>
</html>
