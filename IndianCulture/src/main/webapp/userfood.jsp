<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taste of India</title>
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
            border: 2px solid black;
        }

        .category-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .category-card h5 {
            margin-top: 10px;
            font-size: 1.2rem;
            background-color: black;
            color: white;
            padding: 5px;
            border-radius: 5px;
        }

        .category-card p {
            font-size: 1rem;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h2>Savoring Traditions: The Essence of Indian Cuisine</h2>
        <div class="search-box">
            <input type="text" class="form-control" placeholder="Search Category" id="search-input" aria-label="Search">
        </div>
        <div class="nav-links">
            <a href="userhome" class="text-dark me-3">HOME</a>
                        <a href="userpictures"  class="text-dark me-3">PICTURES</a>
            
            <a href="/" class="text-dark">LOGOUT</a>
        </div>
    </div>

    <!-- Description Section -->
    <div class="container category-section">
        <div class="category-title">Explore the Culinary Wonders of India</div>
        <div class="category-list" id="category-list">
            <!-- Biryani Card -->
            <div class="category-card" data-name="Biryani">
                <img src="https://static.toiimg.com/thumb/53094793.cms?imgsize=178546&width=800&height=800" alt="Biryani">
                <h5>Biryani</h5>
                <p>A fragrant and flavorful rice dish layered with spices, meat, and herbs, loved across India for its rich aroma and taste.</p>
            </div>
            <!-- Masala Dosa Card -->
            <div class="category-card" data-name="Masala Dosa">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrPhZFMnmnCwPOJBM0jUUcr2qLF1q10-o3RQ&s" alt="Masala Dosa">
                <h5>Masala Dosa</h5>
                <p>A crispy South Indian crepe made from fermented rice batter, filled with a spicy potato mixture, served with chutneys and sambar.</p>
            </div>
            <!-- Butter Chicken Card -->
            <div class="category-card" data-name="Butter Chicken">
                <img src="https://images.immediate.co.uk/production/volatile/sites/30/2021/02/butter-chicken-ac2ff98.jpg?quality=90&resize=440,400" alt="Butter Chicken">
                <h5>Butter Chicken</h5>
                <p>A creamy and mildly spiced curry with tender chicken pieces cooked in a tomato-based sauce, popular worldwide.</p>
            </div>
            <!-- Vada Pav Card -->
            <div class="category-card" data-name="Vada Pav">
                <img src="https://ministryofcurry.com/wp-content/uploads/2024/06/vada-pav-3.jpg" alt="Vada Pav">
                <h5>Vada Pav</h5>
                <p>A beloved street food snack of crispy puris filled with spicy and tangy flavored water, chickpeas, and potatoes.</p>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
         <div>
        <p>&copy; 2024 Festivals of India. All rights reserved.</p>
        <p>
            Follow us on: &nbsp;
            <a href="https://www.facebook.com/TheIndianCulture2/">Facebook</a> |
            
            <a href="https://x.com/_indianculture?lang=en">Twitter</a> |
            <a href="https://www.instagram.com/indian_culturee/?hl=en">Instagram</a>&nbsp; &nbsp;
             <a href="aboutus">About Us</a> &nbsp;
        <a href="contactus">Contact Us</a>
        
    </div>
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
