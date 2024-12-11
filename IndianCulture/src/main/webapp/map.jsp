<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Map - Indian Culture</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f4f4f9;
        }

        header {
            width: 100%;
            background-color: #ffcc00;
            text-align: center;
            padding: 15px 0;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .map-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            width: 100%;
            max-width: 1000px;
            margin: auto;
        }

        iframe {
            width: 100%;
            max-width: 800px;
            height: 600px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            border: none;
        }

        @media (max-width: 768px) {
            iframe {
                width: 90%;
                height: 400px;
            }
        }

        footer {
            margin-top: 20px;
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: #fff;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Include Navigation or Header from index.jsp -->
    <header>Google Map - Explore India</header>

    <!-- Map Section -->
    <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30773484.55170563!2d61.0245165611659!3d19.69009515037612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1733578379224!5m2!1sen!2sin" 
            allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Indian Culture. All Rights Reserved.
    </footer>
</body>
</html>
