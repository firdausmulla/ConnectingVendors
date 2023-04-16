<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Vendor's Place</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="style1.css" />
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
</head>
<body>
    <header>
        <nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <img src="images/websiteicon.jpg" class="logob" />
                    <label class="navbar-brand">Vendor's Place</label>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Home1.aspx" class="active">HOME</a></li>
                        <li><a href="aboutus.html">ABOUT US</a></li>
                        <li><a href="#">CONTACT US</a></li>
                        <li><a href="VendorsPage.aspx">VENDORS</a></li>
                        <li><a href="Location.aspx">LOCATION</a></li>
                        <li><a href="VendSignUp.aspx">Become a Vendor</a></li>
                        <li><p><a href="SignUp.aspx">Sign Up</a>&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
                        <li><div id="google_translate_element"></div></li>
                    </ul>
                    
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>


        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="banner" style="background-image: url(https://neokyo.com/img/opengraph/Neokyo_How-to-buy.jpg);"></div>
                    <div class="carousel-caption">
                        <h2 class="animated bounceInRight" style="animation-delay: 1s">Vendors On <span>Fingertip</span></h2>
                        <h3 class="animated bounceInLeft" style="animation-delay: 2s">Search for vendors nearest to you</h3>
                    </div>
                </div>
                <div class="item">
                    <div class="banner" style="background-image: url(https://neokyo.com/img/opengraph/Neokyo_How-to-buy.jpg);"></div>
                    <div class="carousel-caption">
                        <h2 class="animated slideInDown" style="animation-delay: 1s"><span>Feasiable</span> Website</h2>
                        <h3 class="animated fadeInUp" style="animation-delay: 2s">Easy to use and available in multiple languages</h3>
                    </div>
                </div>
                <div class="item">
                    <div class="banner" style="background-image: url(https://neokyo.com/img/opengraph/Neokyo_How-to-buy.jpg);"></div>
                    <div class="carousel-caption">
                        <h2 class="animated zoomIn" style="animation-delay: 1s"><span>Register</span> your Shop</h2>
                        <h3 class="animated fadeInLeft" style="animation-delay: 2s">Register with us and open your virtual store </h3>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </header>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
