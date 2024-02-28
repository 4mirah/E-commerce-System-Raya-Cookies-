<?php
    require_once 'connection.php';

    $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
    $row_count = mysqli_num_rows($select_rows);
?>

<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="style.css">
        <title>Kuih Raya Website</title>
    </head>
    <body>

    <header>
        <a href="index.php" class="logo">Raya Cookies<span>.</span></a>
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#products">Products</a>
            <a href="#review">Review</a>
            <a href="#contact">Contact</a>
            <a href="#cart.php" class="cart"><i class="fas fa-shopping-cart"></i></a>
            <div class="user">
                <button class="dropbtn">
                <i class="fas fa-user"></i>
                </button>
                <div class="user-content">
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
                </div>
            </div> 
        </nav>
    </header>

    <section class="home" id="home">
        <div class="content">
            <h3>Raya cookies</h3>
            <span>Freshly homemade cookies</span>
            <p>Get Your Variety of Raya Cookies at Raya Cookies. A variety of Kuih Raya options are available. What are you waiting for. Let's buy before it runs out.</p>
            <a href="shop.php" class="btn">Shop now</a>
        </div>
    </section>

    <section class="about" id="about">
        <h1 class="heading"><span>About </span> Us </h1>
        <div class="row">
            <div class="video-container">
                <video src="image/video.mp4" loop autoplay muted></video>
                <h3>Best cookies sellers</h3>
            </div>
            <div class="content">
                <h3>Why choose us?</h3>
                <p>Our Business Has Been In Service For 5 Years And Many Customers Have Given Positive Comments About Our Services.</p>
                <p>There are many choices of Raya Cookies that are delicious and interesting. Let's know about our business.</p>
                <a href="learn.php" class="btn">Learn more</a>
            </div>
        </div>
    </section>

    <section class="products" id="products">
        <h1 class="heading"><span>Latest </span> Products </h1>
        <div class="box-container">

            <div class="box">
                <div class="image">
                    <img src="image/biskut choco.png" alt="">
                    <div class="icons">
                        <a href="#" class="cart-btn">add to cart</a>
                    </div>
                </div>
                <div class="content">
                    <h3>BISKUT CHOCO</h3>
                    <div class="price">RM12<span>RM15</span></div>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="image/bahulu.png" alt="">
                    <div class="icons">
                        <a href="#" class="cart-btn">add to cart</a>
                    </div>
                </div>
                <div class="content">
                    <h3>KUIH BAHULU</h3>
                    <div class="price">RM12<span>RM15</span></div>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="image/biskut semperit.png" alt="">
                    <div class="icons">
                        <a href="#" class="cart-btn">add to cart</a>
                    </div>
                </div>
                <div class="content">
                    <h3>BISKUT SEMPERIT</h3>
                    <div class="price">RM12<span>RM15</span></div>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="image/biskut tart.png" alt="">
                    <div class="icons">
                        <a href="#" class="cart-btn">add to cart</a>
                    </div>
                </div>
                <div class="content">
                    <h3>BISKUT TART</h3>
                    <div class="price">RM12<span>RM15</span></div>
                </div>
            </div>

            <a href="shop.php" class="btn" style="align-items: center;">Shop now</a>

        </div>
    </section>

    <section class="review" id="review">
        <h1 class="heading">Customer's <span> Review </span></h1>
        <div class="box-container">

            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>
                    There are many variety of raya cookies here.
                </p>
                <div class="user">
                    <img src="image/me.jpg" alt="">
                    <div class="user-info">
                        <h3>Amirah Syahirah</h3>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>

            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>
                    The biscuits is really good and delicious.
                </p>
                <div class="user">
                    <img src="image/atiyah.jpg" alt="">
                    <div class="user-info">
                        <h3>Atiyah Syahzani</h3>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>

            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>
                    I will repeat this again later. The servis in this shop is good. 
                </p>
                <div class="user">
                    <img src="image/hawa.jpg" alt="">
                    <div class="user-info">
                        <h3>Hawa Humayra</h3>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>

            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>
                    Let's buy raya cookies from this shop. You won't regret it.
                </p>
                <div class="user">
                    <img src="image/farah.jpg" alt="">
                    <div class="user-info">
                        <h3>Farah Zulaikha</h3>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>

        </div>
    </section>

    <section class="contact" id="contact">
        <h1 class="heading"><span>Contact </span> Us </h1>
        <div class="row">
            <form action="">
                <input type="text" placeholder="name" class="box">
                <input type="email" placeholder="email" class="box">
                <input type="number" placeholder="number" class="box">
                <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="send message" class="btn">
            </form>
        </div>
    </section>

    <section class="footer">
        <div class="box-container">

        <div class="box">
                <h3>Quick links</h3>
                <a href="index.php">Home</a>
                <a href="learn.php">About</a>
                <a href="shop.php">Products</a>
            </div>

            <div class="box">
                <h3>Extra links</h3>
                <a href="user.php">My account</a>
                <a href="cart.php">My order</a>
            </div>

            <div class="box">
                <h3>Contact Info</h3>
                <a href="#">rayacookies@gmail.com</a>
                <a href="#">Machang, Kelantan</a>
            </div>

            <div class="social">
            <a href="https://www.facebook.com/profile.php?id=61556976235063"><i class="fab fa-facebook-f"></i></a>
            <a href="https://wa.link/4dzaj5"><i class="fab fa-whatsapp"></i></a>
            <a href="https://www.instagram.com/invites/contact/?i=a0h6f0gny1xp&utm_content=tqyf5q3"><i class="fab fa-instagram"></i></a>
            </div>

        </div>
        <div class="credit">created by <span>Amirah, Hawa, Farah & Atiyah</span>| all rights reserved</div>
    </section>

    </body>
</html>