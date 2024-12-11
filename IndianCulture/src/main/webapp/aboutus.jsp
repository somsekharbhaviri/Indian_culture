<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    <style>
        .container {
            width: 80%; 
            margin: 0 auto; 
            padding: 20px; 
            border: 1px solid #ccc; 
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); 
        }
        h3, h4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="index.jsp" %>

<h3>About Us</h3>
    <div class="container">
        
        
        <section>
            <h4>Welcome to Indian Culture</h4>
            <p>We are a dedicated platform aiming to showcase the rich and diverse heritage of India. Our mission is to educate and inspire people by providing insights into India's vibrant traditions, festivals, art forms, and cuisines.</p>
            <p>Whether you are an Indian looking to reconnect with your roots or a visitor wanting to explore the beauty of Indian culture, we are here to guide you on this journey.</p>
        </section>

        <section>
            <h4>Our Vision</h4>
            <p>To create a community that appreciates and shares the cultural richness of India across the globe. We believe that understanding and celebrating our diverse heritage can bring people together.</p>
        </section>

        <section>
            <h4>Get in Touch</h4>
            <p>If you have any questions or would like to contribute to our website, please feel free to <a href="contactus">reach out</a>!</p>
        </section>

       
    </div><br/>
    <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
     <br/> <br/> <br/> 
      <br/>
     <footer>
            <p>&copy; 2024 Indian Culture. All rights reserved.</p>
              <a href="aboutus">About Us</a> &nbsp;
              <a href="contactus">Contact Us</a>
        </footer>
    
</body>
</html>
