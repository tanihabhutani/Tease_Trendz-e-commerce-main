<?php
require_once "config.php";
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get form data
  $full_name = $_POST["fullname"];
  $email = $_POST["email"];
  $phone_no = $_POST["phone"];
  $brief_of_problem = $_POST["company"];
  $description_of_problem = $_POST["msg"];

  // Insert data into contact_us table
  $sql = "INSERT INTO contact_us (full_name, email, phone_no, brief_of_problem, description_of_problem)
  VALUES ('$full_name', '$email', '$phone_no', '$brief_of_problem', '$description_of_problem')";

  if (mysqli_query($conn, $sql)) {
    // echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  // Close database connection
  mysqli_close($conn);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Boxicons -->
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <!-- Glide js -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="./css/styles.css" />
  <link rel="stylesheet" href="./css/contact.css">


  <title>Contact Us</title>
</head>

<body>
        <!-- Header -->
        <header class="header" id="header">
          <!-- Navigation -->
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
         
         <div class="icon">
             <i class="bx bx-heart"></i>
             <span class="d-flex">0</span>
         </div>
         <a href="cart.html" class="icon">
             <i class="bx bx-cart"></i>
             <span class="d-flex">0</span>
         </a>
       </div>
     </div>
   </div>    
      <div class="bgc">
        <div class="container9">
          <h1 style="font-size: 50px; color: #1b4332;">We'd love to hear from you</h1>
          <div class="contact-info">
          <div style="font-size: 40px; font-weight:650; text-align: center; color:#1b4332 ">
                Your request has been sent. <br> We will contact you as soon as possible.
              </div>
            
<div class="div_img">
  <img src="./images/customer2.png" alt=""> 
</div>
          </div>

        </div>
      </div>
   


   <!-- Footer -->
   <footer class="footer">
    <div class="row">
      <div class="col d-flex">
        <h4>INFORMATION</h4>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact Us</a>
        <a href="terms.html">Terms & Conditions</a>
      </div>
      <div class="col d-flex">
        <h4>USEFUL LINK</h4>
        <a href="product.html">Online Store</a>
        <a href="about.html">Customer Services</a>
        <a href="faq.html">FAQs</a>
        <a href="top.html">Top Brands</a>
      </div>
      <div class="col d-flex">
        <span><i class='bx bxl-facebook-square'></i></span>
        <span><i class='bx bxl-instagram-alt' ></i></span>
        <span><i class='bx bxl-github' ></i></span>
        <span><i class='bx bxl-twitter' ></i></span>
        <span><i class='bx bxl-pinterest' ></i></span>
      </div>
    </div>
  </footer>

</body>

</html>
