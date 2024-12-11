<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        h3 {
            text-align: center;
            color: #5a5a5a;
            margin-top: 20px;
        }
        form {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table td {
            padding: 10px;
            vertical-align: top;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="email"],
        textarea {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            background-color: #f9f9f9;
        }
        textarea {
            height: 100px;
            resize: none;
        }
        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            color: #ffffff;
            background-color: green;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        input[type="reset"] {
            background-color: red;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            opacity: 0.9;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #007bff;
            color: black;
        }
        
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@include file="index.jsp" %>

    <h3>Contact Us</h3>
    
    <form method="post" action="sendemail">
        <table>
            <tr>
                <td><label for="name">Name</label></td>
                <td><input type="text" id="name" name="name" required placeholder="Your Name"/></td>
            </tr>
            <tr>
                <td><label for="email">Email ID</label></td>
                <td><input type="email" id="email" name="email" required placeholder="Your Email"/></td>
            </tr>
            <tr>
                <td><label for="subject">Subject</label></td>
                <td><input type="text" id="subject" name="subject" required placeholder="Subject"/></td>
            </tr>
            <tr>
                <td><label for="message">Message</label></td>
                <td><textarea id="message" name="message" required placeholder="Your Message"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Send"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
    <br>
    <br>
    <br>
    <br>
    <br><br>

    <footer>
        <p>&copy; 2024 Indian Culture. All rights reserved.</p>
        <a href="aboutus">About Us</a> &nbsp;
        <a href="contactus">Contact Us</a>
    </footer>
</body>
</html>
