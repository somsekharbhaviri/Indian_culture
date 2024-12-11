<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #FFDEE9, #B5FFFC); 
        }
        

        .navbar {
            background-color: #FF9933; 
            color: ivory;
            padding: 15px 0;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: ivory;
            text-decoration: none;
            font-size: 16px;
            padding: 12px 20px;
            margin: 0 15px;
            text-align: center;
            border-radius: 30px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar a:hover {
            transform: scale(1.1);
        }

        /* Home button with green color */
        .navbar a.home {
            background-color: #2ecc71; /* Green for Home */
        }

        .navbar a.home:hover {
            background-color: #27ae60; /* Darker Green on hover */
        }

        /* Logout button with red color */
        .navbar a.logout {
            background-color: #e74c3c; /* Red for Logout */
        }

        .navbar a.logout:hover {
            background-color: #c0392b; /* Darker red for hover */
        }

        .navbar a.active {
            background-color: #30D5C8; 
        }

        .content {
            padding: 40px;
            background-color: white;
            margin: 30px auto;
            width: 85%;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .content h1 {
            color: #2A2A2A;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            color: #2A2A2A;
            line-height: 1.6;
        }

        .cta-button {
            background-color: #FFD700;
            color: #2A2A2A;
            font-size: 18px;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #FFB300;
        }

        @media (max-width: 768px) {
            .navbar a {
                font-size: 14px;
                padding: 10px 15px;
            }
            .content {
                padding: 25px;
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="adminhome" class="home">Home</a>
        <a href="addgallery">Gallery</a>
        <a href="displaygalleryitems">All Gallery Items</a>
        <a href="addevent">Add Event</a>
        <a href="events">View All Events</a>
        <a href="viewallregisteredusers">View All Registered Users</a>
<!--         <a href="usereventstatus">User Event Status</a> -->
<!--         <a href="article">Articles</a> -->
        <a href="viewallusers">View All Users</a>
<!--         <a href="#">View Feedback</a> -->
        <a href="/" class="logout">Logout</a>
    </div>

</body>
</html>
