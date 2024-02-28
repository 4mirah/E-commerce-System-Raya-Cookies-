<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"> 
    <link rel="stylesheet" href="learn.css">
    <link rel="stylesheet" href="style.css">

    <script>
  document.addEventListener("DOMContentLoaded", function () {
    const images = document.querySelectorAll(".image-section .slider img");
    let currentImageIndex = 0;

    function showImage(index) {
      images.forEach((img, i) => {
        img.style.display = i === index ? "block" : "none";
      });
    }

    function nextImage() {
      currentImageIndex = (currentImageIndex + 1) % images.length;
      showImage(currentImageIndex);
    }

    // Change image every 3 seconds (adjust as needed)
    setInterval(nextImage, 3000);
  });
</script>

        <title>Kuih Raya Website</title>
    </head>
    <body>

    <header>
        <a href="index.php" class="logo">Raya Cookies<span>.</span></a>
        <nav class="navbar">
            <a href="index.php">Home</a>
            <a href="learn.php">About</a>
            <a href="shop.php">Products</a>
            <a href="cart.php" class="cart"><i class="fas fa-shopping-cart"></i></a>
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

    <div class="section">
    <div class="container">
      <div class="title"> 
        <h1>About Us</h1>
      </div> 
      <div class="content">
        <div class="article"> 
          <h3>"Welcome to Raya Cookies, where we take pride in spreading joy 
            and creating delightful moments for your Aidil Fitri celebrations! 
            As connoisseurs of the finest cookies and 'kuih raya,' 
            we have dedicated ourselves to perfecting the art of crafting delectable treats 
            that bring families and friends together.</h3>
          <p>At Raya Cookies, our passion is to elevate your Aidil Fitri festivities 
            with an exquisite array of handcrafted cookies, each lovingly made using time-honored 
            recipes and premium ingredients. Whether you're craving the classic flavors that evoke 
            nostalgic memories or seeking innovative twists that tantalize the taste buds, 
            our collection has something for everyone.</p>
          <div class="button">
            <a href="#team">Our Team</a>
          </div>
        </div> 
      </div>

      <div class="image-section">
      <div class="slider">
      <img src="image/business_image1.jpg" alt="Business Image">
      <img src="image/business_image2.jpg" alt="Business Image">
      <img src="image/business_image3.jpg" alt="Business Image">
    </div>
    </div>
        <div class="social">
        </div> 
        </div> 
    </div>

    <div class="our-team-section" id="team">
        <div class="container">
        <div class="title">
            <h2>Our Team</h2>
        </div>
        <div class="team-member">
            <img src="image/amirah.jpg">
            <h4>Amirah Syahirah</h4>
            <p>Developer</p>
        </div>
        <div class="team-member">
            <img src="image/hawa.jpg">
            <h4>Hawa Humayra</h4>
            <p>System Analyst</p>
        </div>
        <div class="team-member">
            <img src="image/farah.jpg">
            <h4>Farah Zulaikha</h4>
            <p>Network Expertise</p>
        </div>
        <div class="team-member">
            <img src="image/atiyah.jpg">
            <h4>Atiyah Syahzani</h4>
            <p>Graphic Designer</p>
        </div>
        </div>
    </div>

    </body>

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

</html>