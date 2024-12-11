<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <style>
    </style>
    <script>
        function deleteItem(button) {
            if (confirm("Are you sure you want to delete this item?")) {
                button.closest("form").submit();
            }
        }
    </script>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>

    <h3>Gallery</h3>
    
    <div class="gallery-container">
        <c:forEach items="${galleryItems}" var="galleryItem">
            <div class="gallery-card">
                <img src="displaygalleryimage?id=${galleryItem.id}" alt="${galleryItem.title}" 
                     onerror="this.src='https://via.placeholder.com/220x150?text=No+Image'">
                
                <h4><c:out value="${galleryItem.title}"/></h4>
                
                <p><c:out value="${galleryItem.description}"/></p>
                
                <a href="<c:url value='${galleryItem.link}'/>">click here</a>
                
                <form action="deletegalleryitem" method="post" style="display: inline;">
                    <input type="hidden" name="id" value="${galleryItem.id}">
                    <button type="button" onclick="deleteItem(this)">Delete</button>
                </form>
            </div>
        </c:forEach>
    </div>
</body>
</html>
