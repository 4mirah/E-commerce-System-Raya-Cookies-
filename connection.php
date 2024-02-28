<?php
    
    $conn = mysqli_connect('localhost','root','','shop_db') or die('connection failed');

    if(isset($_GET["ID"])){
        $product_id = $_GET["ID"];
        $sql = "SELECT * FROM cart WHERE ProductID = $product_id";
        $result = $conn->query($sql);
        $total_cart = "SELECT * FROM cart";
        $total_cart_result = $conn->query($total_cart);
        $cart_num = mysqli_num_rows($total_cart_result);
    
        if(mysqli_num_rows($result) > 0){
            $in_cart = "already In cart";
    
            echo json_encode(["num_cart"=>$cart_num,"in_cart"=>$in_cart]);
        }else{
            $insert = "INSERT INTO cart(ProductID) VALUES($product_id)";
            if($conn->query($insert) === true){
                $in_cart = "added into cart";
                echo json_encode(["num_cart"=>$cart_num,"in_cart"=>$in_cart]);
            }else{
                echo "<script>alert(It doesn't insert)</script>";
            }
        }
    }
    
    if(isset($_GET["ID"])){
        $product_id = $_GET["ID"];
        $sql = "DELETE FROM cart WHERE ProductID=".$product_id;
    
        if($conn->query($sql) === TRUE){
            echo "Removed from cart";
        }
    }
?>