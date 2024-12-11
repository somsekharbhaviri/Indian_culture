<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('https://img.freepik.com/free-photo/lohri-celebration-india_23-2151150955.jpg');
    background-size: cover;
    background-position: center;
}

h3 {
    font-size: 28px;
    font-weight: bold;
    color: #f39c12;
    text-transform: uppercase;
    text-align: center;
    margin-bottom: 20px;
}

.form-container {
    text-align: center;
    background: rgba(255, 255, 255, 0.9);
    padding: 20px 40px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    backdrop-filter: blur(10px);
    max-width: 400px;
    margin-left: auto; 
    margin-right: 150px;
    
}

label {
    font-size: 18px;
    color: #333;
    
}

input[type="text"],
input[type="password"] {
    width: 80%; 
    padding: 8px; 
    margin: 5px 0;
    border: 2px solid #2980b9;
    border-radius: 8px;
    transition: border-color 0.3s ease;
    font-size: 14px; 
}
input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #e67e22;
    outline: none;
}

.button-container {
   display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 10px;
    width: 200%; 
    text-align: center; 
}

input[type="submit"],
input[type="reset"] {
    padding: 12px 25px;
    font-size: 16px;
    font-weight: bold;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"] {
    background: linear-gradient(135deg, #e74c3c, #ff5733);
}

input[type="reset"] {
    background: linear-gradient(135deg, #1abc9c, #16a085);
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #c0392b, #e74c3c);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

input[type="reset"]:hover {
    background: linear-gradient(135deg, #16a085, #1abc9c);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

</style>
</head>
<body>
  
  <div class="form-container">
      <h3>Admin Login</h3>
      <form method="post" action="checkadminlogin">
          <table>
              <tr>
                  <td><label for="auname">Enter Username</label></td>
                  <td><input type="text" id="auname" name="auname" required/></td>
              </tr>
              <tr>
                  <td><label for="apwd">Enter Password</label></td>
                  <td><input type="password" id="apwd" name="apwd" required/></td>
              </tr>
              <tr>
                  <td colspan="2" class="button-container">
                      <input type="submit" value="Login"/>
                      <input type="reset" value="Clear"/>
                       
                  </td>
              </tr>
          </table>
      </form>
  </div>
</body>
</html>
