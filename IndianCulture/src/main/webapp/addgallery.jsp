<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Gallery Item</title>
    <link rel="stylesheet" href="styles.css">
    <style>
      body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        background-image: url('https://images.unsplash.com/photo-1511836536898-6d6f1b8f6948?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbG0lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww');
        background-size: cover;
        background-repeat: no-repeat; 
        background-position: center; 
        position: relative;
    }

    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.3); 
        z-index: -1; 
    }

        h3 {
            color: #333;
            text-align: center;
            margin-top: 30px;
            font-size: 24px;
            font-weight: bold;
        }

        .form-container {
            width: 40%;
            margin: 20px auto;
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-spacing: 15px 10px;
        }

        td {
            font-size: 16px;
            color: #333;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        input[type="text"], textarea, select, input[type="file"] {
            width: 100%;
            padding: 8px; 
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            height: 80px; 
        }

        .button {
            background-color: #f39c12;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #e67e22;
        }

        .form-container input[type="submit"] {
            width: 50%;
            margin: 20px auto;
            display: block;
            font-size: 18px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 70%;
            }

            .button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<h3>Add Gallery Item</h3>

<form action="insertgalleryitem" method="post" enctype="multipart/form-data" class="form-container">
    <table>
        <tr>
            <td><label for="category">Category</label></td>
            <td>
                <select name="category" id="category" required>
                    <option value="">---Select---</option>
                    <option value="Dance">Dance</option>
                    <option value="Music">Music</option>
                    <option value="Art">Art</option>
                    <option value="Heritage">Heritage</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="title">Title</label></td>
            <td><input type="text" name="title" id="title" required/></td>
        </tr>
        <tr>
            <td><label for="description">Description</label></td>
            <td><textarea name="description" id="description" required></textarea></td>
        </tr>
        <tr>
            <td><label for="link">Link</label></td>
            <td><input type="text" name="link" id="link" placeholder="Optional link for more information"/></td>
        </tr>
        <tr>
            <td><label for="image">Image</label></td>
            <td><input type="file" name="image" id="image" required/></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" value="Add to Gallery" class="button"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
