<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Culture - Articles</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4e2d8;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            font-size: 36px;
            text-decoration: underline;
            color: #444;
            margin-top: 40px;
        }

        .article-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            margin-top: 40px;
        }

        .article-card {
            background-color: #fff;
            border: 1px solid #ddd;
            width: 300px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .article-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.2);
        }

        .article-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 10px;
        }

        .article-card h3 {
            font-size: 22px;
            margin: 15px 0;
            color: #333;
        }

        .article-card p {
            font-size: 16px;
            color: #666;
            margin-bottom: 20px;
        }

        .article-card a {
            font-size: 14px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 30px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .article-card a:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }
    </style>
</head>
<body>

    <h1>Indian Culture - Articles</h1>

    <div class="article-container">
        <!-- Loop through articles and display each -->
        <c:forEach items="${articles}" var="article">
            <div class="article-card">
                <!-- Article Image -->
                <c:if test="${not empty article.image}">
                    <img src="<c:url value='/images/${article.image}' />" alt="Article Image">
                </c:if>
                <c:if test="${empty article.image}">
                    <img src="https://via.placeholder.com/300x180?text=No+Image" alt="No Image">
                </c:if>
                
                <!-- Article Title -->
                <h3><c:out value="${article.title}"/></h3>
                
                <!-- Article Description -->
                <p><c:out value="${article.description}"/></p>

                <!-- Read More Link -->
                <a href="articleDetail.jsp?articleId=${article.id}">Read More</a>
            </div>
        </c:forEach>
    </div>

</body>
</html>
