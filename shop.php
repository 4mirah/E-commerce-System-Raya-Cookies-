<?php

  require_once 'connection.php';

  if(isset($_POST['add_to_cart'])){

    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_image = $_POST['product_image'];
    $product_quantity = 1;
 
    $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name'");
 
    if(mysqli_num_rows($select_cart) > 0){
       $message[] = 'product already added to cart';
    }else{
       $insert_product = mysqli_query($conn, "INSERT INTO `cart`(name, price, image, quantity) VALUES('$product_name', '$product_price', '$product_image', '$product_quantity')");
       $message[] = 'product added to cart succesfully';
    }
}

    $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
    $row_count = mysqli_num_rows($select_rows);

?>

<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="shop.css" >
        <link rel="stylesheet" href="style.css" >
        <title>Kuih Raya Website</title>
    </head>
    <body>

    <?php

    if(isset($message)){
    foreach($message as $message){
        echo '<div class="message"><span>'.$message.'</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
    };
    };

    ?>

    <header>
        <a href="index.php" class="logo">Raya Cookies<span>.</span></a>
        <nav class="navbar">
            <a href="index.php">Home</a>
            <a href="learn.php">About</a>
            <a href="shop.php">Products</a>
            <a href="cart.php" class="cart"><i class="fas fa-shopping-cart"></i><span><?php echo $row_count; ?></span></a>
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

    <section class="products" id="products">
      <h1 class="heading"><span>Our </span> Products </h1>
      <div class="box-container">

      <?php
      
      $select_product = mysqli_query($conn, "SELECT * FROM `product`");
      if(mysqli_num_rows($select_product) > 0){
         while($fetch_product = mysqli_fetch_assoc($select_product)){
      ?>

      <form action="" method="post">
         <div class="box">
            <img src="image/<?php echo $fetch_product['image']; ?>" alt="">
            <h3><?php echo $fetch_product['name']; ?></h3>
            <div class="price">$<?php echo $fetch_product['price']; ?>/-</div>
            <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
            <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
            <input type="hidden" name="product_image" value="<?php echo $fetch_product['image']; ?>">
            <input type="submit" class="btn" value="add to cart" name="add_to_cart">
         </div>
      </form>

      <?php
         };
      };
      ?>

          </div>

        </div>
    </section>

    <section class="footer">
        <div class="credit">created by <span>Amirah, Hawa, Farah & Atiyah</span>| all rights reserved</div>
    </section>

    </body>
</html>