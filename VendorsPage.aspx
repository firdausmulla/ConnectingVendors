<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorsPage.aspx.cs" Inherits="VendorsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./stylevendors.css" />
    <title>Vendors</title>
</head>
<body>
    <!-- HEADER -->
    <header class="header">
        <nav>
            <img src="images/websiteicon.jpg" class="logob" />
            <ul>
                <li><a href="Home.aspx">HOME </a></li>
                <li><b><a href="VendSignUp.aspx">Become A Vendor </a></b></li>
                <li><a href="Location.aspx">LOCATION</a></li>
                <li><a href="aboutus.html">ABOUT US</a></li>
            </ul>
        </nav>
    </header>

    <div class="content_section">
        <h2> ALL SHOPS </h2>
        <div class="product_box margin_r35">
            <h3>ABC Flower Shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/mainsiteimg3.jpg" width="250" height="130" alt="Flower shop" /></a> </div>
            <p class="price">Price: Rs. 100</p>
            <a href="#">Detail</a>
        </div>
        <div class="product_box margin_r35">
            <h3>FastFood Shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/mainsiteimg1.jpg" width="250" height="130" alt="" /></a> </div>
            <p class="price">Price: Rs. 90</p>
            <a href="#">Detail</a>
        </div>
        <div class="product_box">
            <h3>uvw shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/uvwimg.jpg" width="250" height="130" alt="" /></a> </div>
            <p class="price">Price: Rs. 150</p>
            <a href="#">Detail</a>
        </div>
        <div class="cleaner"></div>
        <div class="product_box margin_r35">
            <h3>Fresh Fruit shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/fruit2.jpg" width="250" height="130" alt="" /></a> </div>
            <p class="price">Price: Rs. 50</p>
            <a href="#">Detail</a>
        </div>
        <div class="product_box margin_r35">
            <h3>RST Falooda shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/falooda.jpg" width="250" height="130" alt="" /></a> </div>
            <p class="price">Price: Rs. 100</p>
            <a href="#">Detail</a>
        </div>
        <div class="product_box">
            <h3> Pani Puri shop</h3>
            <div class="image_wrapper"> <a href="#"><img src="images/panipuri.jpg" width="250" height="130" alt="" /></a> </div>
            <p class="price">Price: Rs. 25</p>
            <a href="#">Detail</a>
        </div>
        <div class="cleaner"></div>
        <div class="button_01"><b><a href="#">View All</a></b></div>
    </div>
</body>
</html>
