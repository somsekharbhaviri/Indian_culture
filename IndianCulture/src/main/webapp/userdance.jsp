<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dance of India</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">  
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }

        .header {
            background: linear-gradient(90deg, #fdd835, #ff8a65);
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header h2 {
            color: black;
            font-size: 36px;
            margin: 0;
        }

        .search-box {
            width: 250px;
        }

        .nav-links a {
            text-decoration: none;
            color: #000;
            margin-left: 20px;
        }

        .carousel-container {
            margin-top: 30px;
        }

        .carousel-indicators button {
            background-color: #000;
        }

        .carousel-caption h5 {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 5px;
            border-radius: 5px;
        }

        .carousel img {
            height: 500px;
            object-fit: cover;
        }

        .footer {
            background-color: #ffcc00;
            padding: 20px;
            text-align: center;
            position: relative;
            width: 100%;
            bottom: 0;
            margin-top: 30px;
        }

        .footer a {
            color: #000;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .category-section {
            margin-top: 30px;
            text-align: center;
        }

        .category-title {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .category-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
            text-align: center;
        }

        .category-card {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    border: 2px solid black; /* Black border added */
}


        .category-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .category-card h5 {
    margin-top: 10px;
    font-size: 1.2rem;
    background-color: black; /* Black background */
    color: white; /* White text */
    padding: 5px;
    border-radius: 5px; /* Optional: Adds rounded corners to the header */
}

        .category-card p {
            font-size: 1rem;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h2>Dancing Dreams: The Magic of Indian Dance</h2>
        <div class="search-box">
            <input type="text" class="form-control" placeholder="Search Category" aria-label="Search">
        </div>
        <div class="nav-links">
            <a href="userhome" class="text-dark me-3">HOME</a>
            <a href="userpictures"  class="text-dark me-3">PICTURES</a>
            <a href="/" class="text-dark">LOGOUT</a>
        </div>
    </div>

    <!-- Description Section -->
    

 

    <!-- Dance Categories Section -->
    <div class="container category-section">
        <div class="category-title">Explore Dance Categories</div>
        <div class="category-list">
            <!-- Bharatanatyam Card -->
            <div class="category-card">
                <img src="https://curioustimes.in/wp-content/uploads/2024/02/Bharatanatyam-Dance-Meets-Muscle-Power.jpg" alt="Bharatanatyam">
                <h5>Bharatanatyam</h5>
                <p>A classical dance form from Tamil Nadu, known for its fixed upper torso, intricate footwork, and hand gestures.</p>
            </div>
            <!-- Garba Card -->
            <div class="category-card">
                <img src="https://cdn.shopify.com/s/files/1/0625/7550/9710/files/Garba_Dance_480x480.jpg?v=1724743490" alt="Garba">
                <h5>Garba</h5>
                <p>A folk dance from Gujarat performed in circles, symbolizing the cycle of life and the worship of Goddess Durga.</p>
            </div>
            <!-- Kathak Card -->
            <div class="category-card">
                <img src="https://www.mercurynews.com/wp-content/uploads/2016/08/20151201__dancecard1.jpg?w=640" alt="Kathak">
                <h5>Kathak</h5>
                <p>A classical dance form from North India, characterized by storytelling through intricate footwork and spins.</p>
            </div>
            <!-- Odissi Card -->
            <div class="category-card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrLIZUFFLmuJpYkmHiNpF4Q9-30wWFu-fDWw&s" alt="Odissi">
                <h5>Odissi</h5>
                <p>An ancient dance form from Odisha, known for its graceful movements and devotional themes.</p>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Festivals of India. All rights reserved.</p>
        <p>
            Follow us on:
            <a href="https://www.facebook.com/TheIndianCulture2/">Facebook</a> |
            <a href="https://x.com/_indianculture?lang=en">Twitter</a> |
            <a href="https://www.instagram.com/indian_culturee/?hl=en">Instagram</a>
             <a href="aboutus">About Us</a> &nbsp;
        <a href="contactus">Contact Us</a>
        
    </div>


   <script>
    document.addEventListener('DOMContentLoaded', () => {
        const searchBox = document.querySelector('.search-box input');
        const categoryCards = document.querySelectorAll('.category-card');

        searchBox.addEventListener('input', () => {
            const searchTerm = searchBox.value.toLowerCase();
            categoryCards.forEach(card => {
                const title = card.querySelector('h5').textContent.toLowerCase();
                if (title.includes(searchTerm)) {
                    card.style.display = "block"; // Show matching cards
                } else {
                    card.style.display = "none"; // Hide non-matching cards
                }
            });
        });
    });
</script>
</body>
</html>