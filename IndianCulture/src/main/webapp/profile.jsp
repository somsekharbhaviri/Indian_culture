<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="userindex.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile</title>
  <style>
body {
  margin: 0;
  font-family: 'Roboto', sans-serif;
  background:  
              url('https://img.freepik.com/free-vector/copy-space-gradient-orange-background_23-2148845473.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  color: #333;
  height: 100vh;
  display: flex;
  flex-direction: column;
}

    /* Divide the page into 3 sections */
    .container {
      display: grid;
      grid-template-rows: auto 1fr auto;
      height: 100%;
    }

    /* Header section for the navbar */
    .header {
      background-color: transparent;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 10px 20px;
    }

    /* Main section for the profile card */
    .main {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }

    .card {
      background: rgba(255, 255, 255, 0.1);
      border-radius: 20px;
      padding: 40px;
      max-width: 450px;
      width: 100%;
      backdrop-filter: blur(10px);
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
      text-align: center;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
    }

    h2 {
      font-size: 32px;
      margin-bottom: 20px;
      font-weight: 700;
      text-transform: uppercase;
      color: black;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 20px;
    }

    label {
      font-size: 16px;
      font-weight: bold;
      color: black;
    }

    input[type="text"],
    input[type="email"],
    textarea {
      padding: 15px;
      font-size: 16px;
      border: none;
      border-radius: 10px;
      background: rgba(255, 255, 255, 0.9);
      color: #333;
      box-shadow: inset 0 5px 15px rgba(0, 0, 0, 0.1);
      transition: box-shadow 0.3s ease, background 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
      background: #fff;
      box-shadow: 0 5px 15px rgba(0, 198, 255, 0.5);
      outline: none;
    }

    textarea {
      resize: vertical;
      min-height: 100px;
    }

    button {
      padding: 15px;
      font-size: 18px;
      font-weight: bold;
      text-transform: uppercase;
      color: black;
      background: linear-gradient(to right, #6a11cb, #2575fc);
      border: none;
      border-radius: 50px;
      cursor: pointer;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    button:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
    }

    button:active {
      transform: translateY(0);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    }

    /* Footer section */
    .footer {
      text-align: center;
      padding: 10px;
      font-size: 14px;
      background: rgba(255, 255, 255, 0.1);
    }
  </style>
</head>

<body>
  <div class="container">
   

    <!-- Main Section -->
    <main class="main">
      <div class="card">
        <h2>My Profile</h2>
        <form action="updateProfile" method="post">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" value="${user.name}" required>

          <label for="email">Email:</label>
          <input type="email" id="email" name="email" value="${user.email}" required>

          <label for="message">Message:</label>
          <textarea id="message" name="message" rows="4">${user.message}</textarea>

          <input type="hidden" name="id" value="${user.id}">

          <button type="submit">Update Profile</button>
        </form>
      </div>
    </main>

    <!-- Footer Section -->
    <footer class="footer">
      © 2024 Indian Culture. All rights reserved.
    </footer>
  </div>
</body>

</html>
	