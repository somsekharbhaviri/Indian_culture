<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Events</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #f4e2d8, #c6e6f5);
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            text-decoration: underline;
            color: #444;
            margin: 20px 0;
        }

        /* Container for event cards */
        .events-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        /* Individual event card styling */
        .event-card {
            background-color: #fff;
            border: 1px solid #ddd;
            width: 250px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s, scale 0.2s;
            overflow: hidden;
            text-align: center;
            position: relative;
            padding: 20px;
        }

        .event-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.2);
        }

        /* Event title outside card */
        .event-card h4 {
            font-size: 22px;
            font-weight: bold;
            color: #fff;
            background-color: black;
            padding: 10px 20px;
            position: absolute;
            top: -25px;
            left: 20px;
            right: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }

        .event-card h4:hover {
            background-color: #555;
        }

        /* Event image */
        .event-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
        }

        /* Event description */
        .event-card p {
            font-size: 14px;
            color: #666;
            margin: 5px 0;
            padding: 0 10px;
        }

        /* Event date */
        .event-card .date {
            font-size: 14px;
            color: #555;
            font-weight: bold;
            margin-bottom: 10px;
        }

        /* Action buttons container */
        .event-card .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
            padding: 10px 0;
            border-top: 1px solid #ddd;
            background-color: #f9f9f9;
        }

        /* Action buttons */
        .event-card button, .event-card a.delete-button {
            font-size: 14px;
            padding: 10px 20px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s, transform 0.2s;
        }

        /* Register button */
        .event-card .register-button {
            background: linear-gradient(to right, #007bff, #00aaff);
            color: white;
        }

        .event-card .register-button:hover {
            background: linear-gradient(to right, #0056b3, #0099cc);
            transform: translateY(-3px);
        }

        /* Delete button */
        .event-card .delete-button {
            background: linear-gradient(to right, #ff4d4d, #ff6666);
            color: white;
            text-decoration: none;
        }

        .event-card .delete-button:hover {
            background: linear-gradient(to right, #ff1a1a, #ff3333);
            transform: translateY(-3px);
        }

    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<h1>Upcoming Events</h1>

<div class="events-container">
    <c:forEach items="${viewallevents}" var="event">
        <div class="event-card">
            <!-- Event title outside the card -->
            <h4><c:out value="${event.title}"/></h4>

            <!-- Event image -->
            <c:if test="${not empty event.image}">
                <img src="<c:url value='/displayeventimage?id=${event.id}'/>" alt="Event Image">
            </c:if>
            <c:if test="${empty event.image}">
                <img src="https://via.placeholder.com/250x150?text=No+Image" alt="No Image">
            </c:if>

            <!-- Event description -->
            <p><c:out value="${event.description}"/></p>
            <p class="date">📅 <c:out value="${event.date}"/></p>

            <!-- Action buttons -->
            <div class="actions">
               <button class="delete-button" 
    onclick="if(confirm('Are you sure you want to delete this event?')) { location.href = '<c:url value='/deleteEvent?id=${event.id}'/>' }">
    Delete
</button>

            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
