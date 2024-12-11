<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Events</title>
    <style>
        /* General Styles */
        body {
    font-family: 'Segoe UI', sans-serif;
    background: url('https://img.freepik.com/free-photo/abstract-luxury-gold-yellow-gradient-studio-wall-well-use-as-background-layout-banner-product-presentation_1258-63552.jpg?semt=ais_hybrid') no-repeat center center fixed; /* Apply background image */
    background-size: cover; /* Make sure the image covers the entire background */
    margin: 0;
    padding: 0;
}


        h1 {
            text-align: center;
            font-size: 32px;
            color: #333;
            margin: 20px 0;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Back Button */
        .back-button {
            position: fixed;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 14px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        /* Events Container */
        .events-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        /* Event Card */
        .event-card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            width: 300px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }

        .event-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        .event-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .event-card h4 {
            font-size: 22px;
            color: #fff;
            background-color: gold;
            margin: 0;
            padding: 10px;
            text-transform: capitalize;
        }

        .event-card p {
            font-size: 15px;
            color: #555;
            margin: 10px 15px;
            line-height: 1.6;
        }

        .event-card .date {
            font-size: 14px;
            font-weight: bold;
            color: #444;
            margin: 10px 15px;
        }

        .actions {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 15px;
            gap: 10px;
        }

        .register-button {
            background: linear-gradient(to right, #007bff, #0056b3);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 30px;
            cursor: pointer;
            text-transform: uppercase;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .register-button:hover {
            background: linear-gradient(to right, #0056b3, #003f8a);
        }

        .status-message {
            font-size: 14px;
            color: #666;
            font-style: italic;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .event-card {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <a href="javascript:history.back()" class="back-button">Back</a>
    <h1>Upcoming Events</h1>
    <div class="events-container">
        <c:forEach items="${userevents}" var="event">
            <div class="event-card">
                <h4><c:out value="${event.title}"/></h4>
                <c:choose>
                    <c:when test="${not empty event.image}">
                        <img src="<c:url value='/displayeventimage?id=${event.id}'/>" alt="Event Image">
                    </c:when>
                    <c:otherwise>
                        <img src="https://via.placeholder.com/300x200?text=No+Image" alt="No Image">
                    </c:otherwise>
                </c:choose>
                <p><c:out value="${event.description}"/></p>
                <p class="date">📅 <c:out value="${event.date}"/></p>
                <div class="actions">
                    <c:choose>
                        <c:when test="${event.registered}">
                            <p class="status-message" id="status-${event.id}">Already Registered</p>
                        </c:when>
                        <c:otherwise>
                            <button 
                                class="register-button" 
                                onclick="registerEvent('${event.id}', '${user.id}')">
                                Register
                            </button>
                            <p class="status-message" id="status-${event.id}">Not Registered</p>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </c:forEach>
    </div>

    <script>
        function registerEvent(eventId, userId) {
            document.getElementById('status-' + eventId).innerText = "Registration successful";
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "<c:url value='/register'/>", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.send("eventId=" + eventId + "&userId=" + userId);
        }
    </script>
</body>
</html>
