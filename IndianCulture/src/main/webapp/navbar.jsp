<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Portal</title>
    <style>
    body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('https://img.freepik.com/free-vector/abstract-happy-diwali-background-with-text-space_1017-40279.jpg');
    background-size: cover;
    background-position: center;
}

.login-container {
    text-align: center;
    background: rgba(255, 255, 255, 0.9);
    padding: 30px 30px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    backdrop-filter: blur(10px);
    max-width: 400px;
    transform: translateX(200px);
}

h1 {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 40px;
    color: #f39c12;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.buttons-container {
    display: flex;
    justify-content: center;
    gap: 25px;
}

.login-btn {
    padding: 15px 35px;
    font-size: 18px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: bold;
    color: white;
    position: relative;
    overflow: hidden;
}

.admin-btn {
    background: linear-gradient(135deg, #ff8c00, #e74c3c);
}

.user-btn {
    background: linear-gradient(135deg, #1abc9c, #16a085);
}

.login-btn::before {
    content: "";
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.3);
    transition: left 0.3s;
    border-radius: 8px;
}

.login-btn:hover::before {
    left: 0;
}

.login-btn:active {
    transform: scale(0.96);
}

.login-btn:hover {
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
}

.back-btn {
    padding: 10px 30px;
    font-size: 16px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: bold;
    color: white;
    background: linear-gradient(135deg, #e74c3c, #c0392b);
    position: relative;
    overflow: hidden;
    margin-top: 20px;
}

.back-btn::before {
    content: "";
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.3);
    transition: left 0.3s;
    border-radius: 8px;
}

.back-btn:hover::before {
    left: 0;
}

.back-btn:active {
    transform: scale(0.96);
}

.back-btn:hover {
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
    <div class="login-container">
        <h1>Explore the Spirit of India</h1>
        <div class="buttons-container">
            <button class="login-btn admin-btn" onclick="location.href='adminlogin'">Admin Login</button>
            <button class="login-btn user-btn" onclick="location.href='userlogin'">User Login</button>
        </div>
<br/>
            <button class="back-btn" onclick="location.href='/'">Back</button>


    </div>
                 
    
</body>
</html>
