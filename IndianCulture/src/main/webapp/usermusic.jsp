<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beats of India</title>
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
        height: 200px; /* Fixed height for consistency */
        object-fit: cover; /* Maintain aspect ratio and fill the space */
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
        <h2> Melodic Journeys: The Magic of Indian Music </h2>
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
    

 
<div class="container category-section">
    <div class="category-title">Explore Indian Music</div>
    <div class="category-list">
        <!-- Hindustani Classical Card -->
        <div class="category-card">
            <img src="https://cultureandheritage.org/wp-content/uploads/2022/08/x-5.jpg" alt="Hindustani Classical">
            <h5>Hindustani Classical</h5>
            <p>A traditional music form from North India, known for ragas and intricate improvisation, often performed with instruments like the sitar and tabla.</p>
        </div>
        <!-- Carnatic Music Card -->
        <div class="category-card">
            <img src="https://img1.wsimg.com/isteam/ip/ab8f03b2-19e9-4074-b3b6-8a4f8b16772d/Thyagaraja-Aradhana.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25" alt="Carnatic Music">
            <h5>Carnatic Music</h5>
            <p>A classical music style from South India, rich in vocal tradition and characterized by complex rhythms and compositions.</p>
        </div>
        <!-- Folk Music Card -->
        <div class="category-card">
            <img src="https://www.culturalindia.net/iliimages/Indian-Folk-Music-ili-457-img-1.jpg" alt="Folk Music">
            <h5>Folk Music</h5>
            <p>Vibrant regional music that reflects the stories, culture, and traditions of different Indian communities.</p>
        </div>
        <!-- Bollywood Music Card -->
        <div class="category-card">
            <img src="https://media.gettyimages.com/id/874104940/photo/mumbai-india-bollywood-singer-arijit-singh-performs-during-live-in-concert-at-mmrda-grounds.jpg?s=612x612&w=gi&k=20&c=q6yM0-sR6xB04aOba2MODSzFAAYyIrbHS9e_Kx1ZvZw=" alt="Bollywood Music">
            <h5>Bollywood Music</h5>
            <p>A fusion of Indian and Western music styles, featuring catchy melodies and iconic film soundtracks.</p>
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
</script></body>
</html>