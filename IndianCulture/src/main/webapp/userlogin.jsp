<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <style>
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f5f5f5;
            background-image: url('https://img.freepik.com/free-vector/background-template-with-mandala-pattern-design_1308-42133.jpg');
            background-size: cover; /* Ensures the image covers the whole page */
            background-position: center center; /* Keeps the image centered */
            background-attachment: fixed; /* Makes the background fixed while scrolling */
        }

        h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for readability */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        table {
            width: 100%;
\        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            width: 100px;
            padding: 10px;
            margin: 10px 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            color: #fff;
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #4CAF50;
        }

        input[type="reset"] {
            background-color: #f44336;
        }

        /* Hover effects */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
        }

        .signup-link {
            text-align: center;
            margin-top: 15px;
            color: #555;
        }

        .signup-link a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
  
  <div class="form-container">
      <h3><u>User Login</u></h3>
      <form method="post" action="checkuserlogin">
          <table>
              <tr>
                  <td><label for="uemail">Enter Email ID</label></td>
                  <td><input type="email" id="uemail" name="uemail" required/></td>
              </tr>
              <tr>
                  <td><label for="upwd">Enter Password</label></td>
                  <td><input type="password" id="upwd" name="upwd" required/></td>
              </tr>
              <tr>
                  <td colspan="2" class="button-container">
                      <input type="submit" value="Login"/>
                      <input type="reset" value="Clear"/>
                  </td>
              </tr>
          </table>
      </form>
      <div class="signup-link">
          <p>Don’t have an account? <a href="userregistration">Sign up here</a></p>
      </div>
  </div>

</body>
</html>
