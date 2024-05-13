<?php
// Start session
session_start();

// Check if user is logged in
// if (!isset($_SESSION['user_id'])) {
//     // Redirect to login page if user is not logged in
//     header("location: login.php");
//     exit;
// }

// Fetch user data from session variables
$user_id = $_SESSION['user_id'];
$username = $_SESSION['name'];
$email = $_SESSION['username'];
$age = $_SESSION['age'];
$gender = $_SESSION['gender'];
$address = $_SESSION['address'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Add your CSS link here -->
    <!-- <link rel="stylesheet" href="./css/styles.css"> -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet"/>
    <!-- Boxicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
    <!-- Glide js -->
    <link rel="preconnect" href="https://fonts.googleapis.com">  
    <!-- google fonts-->
    <link rel="stylesheet" href="./css/styles.css" />
    <!-- icon library(star)-->
    <link rel="stylesheet" href="./css/profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <title>Tease_Trendz</title> -->
</head>
<body>
<header class="header" id="header">
      <!--Nav 1 -->
      <div class="top-nav">
        <div class="container d-flex">
          <p> </p>
          <ul class="d-flex">
            <li><a href="about.html">About Us</a></li>
            <li><a href="terms.html">Terms</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </div>
      </div>
      <!-- Nav 2-->
      <div class="navigation">
        <div class="nav-center container d-flex">
        <a href="index.html" class="logo"><h1>Tease_Trendz</h1></a>

          <ul class="nav-list d-flex">
            <li class="nav-item">
              <a href="index.php" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
              <a href="product2.html" class="nav-link">Trends</a>
            </li>
            <li class="nav-item">
            <a href="product.html" class="nav-link">Shop</a>
          </li>
            <li class="nav-item">
              <a href="about.html" class="nav-link">About Us</a>
            </li>
            <li class="nav-item">
              <a href="contact.html" class="nav-link">Contact Us</a>
            </li>
          </ul>

          <div class="icons d-flex">
            <a href="login.html" class="icon">
              <i class="bx bx-user"></i>
            </a>
            <a href="search.html" class="icon">
              <i class="bx bx-search"></i>
            </a>
            <div class="icon" >
              <i class="bx bx-heart"></i>
              <span class="d-flex">0</span>
            </div>
            <a href="cart.html" class="icon">
              <i class="bx bx-cart"></i>
              <span class="d-flex">0</span>
            </a>
          </div>

          <div class="hamburger">
            <i class="bx bx-menu-alt-left"></i>
          </div>
        </div>
      </div>

    <div class="container cont">
    <h1 style="text-align: center;">User Profile</h1>
        <div class="profile-info">
            <div class="profile-info-item">
                <label>Name:</label>
                <span><?php echo $username; ?></span>
            </div>
            <div class="profile-info-item">
                <label>Email:</label>
                <span><?php echo $email; ?></span>
            </div>
            <div class="profile-info-item">
                <label>Age:</label>
                <span><?php echo $age; ?></span>
            </div>
            <div class="profile-info-item">
                <label>Gender:</label>
                <span><?php echo $gender; ?></span>
            </div>
            <div class="profile-info-item">
                <label>Address:</label>
                <span><?php echo $address; ?></span>
            </div>
        </div>
    </div>
<footer class="footer">
    <div class="row">
        <div class="col d-flex">
            <h4>INFORMATION</h4>
            <a href="">About us</a>
            <a href="">Contact Us</a>
            <a href="">Term & Conditions</a>
            <a href="">Shipping Guide</a>
        </div>
        <div class="col d-flex">
            <h4>USEFUL LINK</h4>
            <a href="">Online Store</a>
            <a href="">Customer Services</a>
            <a href="">Promotion</a>
            <a href="">Top Brands</a>
        </div>
        <div class="col d-flex">
            <span><i class="bx bxl-facebook-square"></i></span>
            <span><i class="bx bxl-instagram-alt"></i></span>
            <span><i class="bx bxl-github"></i></span>
            <span><i class="bx bxl-twitter"></i></span>
            <span><i class="bx bxl-pinterest"></i></span>
        </div>
    </div>
</footer>
</body>
</html>
