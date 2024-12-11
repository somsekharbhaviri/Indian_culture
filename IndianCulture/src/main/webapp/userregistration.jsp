<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration - Indian Culture and Heritage</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
}

h3 {
    text-align: center;
    color: orange;
    margin-bottom: 20px;
    font-size: 24px;
}

label {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
    display: inline-block;
}

input[type="text"],
input[type="email"],
input[type="password"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

textarea {
    resize: vertical;
    height: 100px;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
textarea:focus {
    border-color: orange;
    outline: none;
}

input[type="submit"],
input[type="reset"] {
    width: 48%;
    padding: 12px;
    background-color: orange;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
    background-color: #3498db;
}

button-container {
    display: flex;
    justify-content: space-between;
}

@media (max-width: 600px) {
    .form-container {
        padding: 20px;
        width: 90%;
    }

    h3 {
        font-size: 20px;
    }
}
</style>
</head>
<body>

  <div class="form-container">
      <h3>User Registration</h3>
      <form method="post" action="insertuser">
    <table>
        <tr>
            <td><label for="uname"> Name</label></td>
            <td><input type="text" id="uname" name="uname" required/></td>
        </tr>
        <tr>
            <td><label for="uemail">Email</label></td>
            <td><input type="email" id="email" name="uemail" required/></td>
        </tr>
        <tr>
            <td><label for="upwd">Password</label></td>
            <td><input type="password" id="password" name="upwd" required/></td>
        </tr>
        <tr>
            <td><label for="umessage">Additional Information</label></td>
            <td><textarea id="message" name="umessage" rows="4" placeholder="Tell us about your interest in Indian culture" required></textarea></td>
        </tr>
        <tr>
            <td colspan="2" class="button-container">
                <input type="submit" value="Register"/>
                <input type="reset" value="Clear"/>
            </td>
        </tr>
    </table>
</form>

  </div>

</body>
</html>
