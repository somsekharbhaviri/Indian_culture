<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }

    .navbar {
        background: linear-gradient(90deg, #fdd835, #ff8a65);
        padding: 10px 20px;
        display: flex;
        justify-content: center;
    }

    .navbar a {
        color: black;
        text-decoration: none;
        margin: 0 15px;
        font-size: 18px;
        transition: color 0.3s ease;
    }

    .navbar a:hover {
        text-decoration: underline;
    }

    .content {
        text-align: center;
        padding: 50px;
        background-color: #ffffff;
        margin: 20px auto;
        border: 2px solid #000;
        width: 80%;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    .content h1 {
        color: #ff6600;
        font-size: 28px;
    }

    footer {
        text-align: center;
        padding: 10px;
        background-color: #ffcc00;
        position: relative;
        bottom: 0;
        width: 100%;
    }
</style>
</head>
<body>
 <%@include file = "userindex.jsp" %>
 <main>
   
        <h1>Welcome to the User Dashboard</h1>
  </main>
    <footer>
        � 2024 Indian Culture Website
    </footer>
</body>
</html>