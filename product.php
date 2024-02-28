<?php

@include 'connection.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="admin.css">
</head>
<body>
   
<?php

if(isset($message)){
   foreach($message as $message){
      echo '<div class="message"><span>'.$message.'</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
   };
};

?>

<?php include 'adminhead.php'; ?>

<div class="container">

<section class="product">

   <h1 class="heading">Our products</h1>

   <div class="box-container">

      <?php
      
      $select_product = mysqli_query($conn, "SELECT * FROM `product`");
      if(mysqli_num_rows($select_product) > 0){
         while($fetch_product = mysqli_fetch_assoc($select_product)){
      ?>

      <form action="" method="post">
         <div class="box">
            <img src="image/<?php echo $fetch_product['Image']; ?>" alt="">
            <h3><?php echo $fetch_product['Name']; ?></h3>
            <div class="price">RM<?php echo $fetch_product['Price']; ?>/-</div>
            <input type="hidden" name="product_name" value="<?php echo $fetch_product['Name']; ?>">
            <input type="hidden" name="product_price" value="<?php echo $fetch_product['Price']; ?>">
            <input type="hidden" name="product_image" value="<?php echo $fetch_product['Image']; ?>">
         </div>
      </form>

      <?php
         };
      };
      ?>

   </div>

</section>

</div>

</body>
</html>