<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto; 
            padding: 20px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="date"], input[type="file"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
            height: 150px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            display: block;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
        .message {
            color: green;
            font-size: 16px;
            text-align: center;
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <h1>Add New Event</h1>

    <form action="/addevent" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">Event Title</label>
            <input type="text" id="title" name="title" required placeholder="Enter event title">
        </div>

        <div class="form-group">
            <label for="description">Event Description</label>
            <textarea id="description" name="description" required placeholder="Enter event description"></textarea>
        </div>

        <div class="form-group">
            <label for="date">Event Date</label>
            <input type="date" id="date" name="date" required>
        </div>

        <div class="form-group">
            <label for="image">Event Image</label>
            <input type="file" id="image" name="image" accept="image/*">
        </div>

        <div class="form-group">
            <button type="submit">Add Event</button>
        </div>
    </form>

    <c:if test="${not empty message}">
        <div class="message">
            ${message}
        </div>
    </c:if>
</div>

</body>
</html>
