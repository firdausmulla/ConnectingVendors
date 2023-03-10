<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
    <link rel="stylesheet" href="./style.css" />
    <title>Connecting Vendors</title>
</head>

<body>
    <!-- HEADER -->
    <header class="header">
        <nav>
            <img src="images/websiteicon.jpg" class="logob" />
            <ul>
                <li><a href="Home.aspx">HOME</a></li>
                <li><a href="aboutus.html">ABOUT US</a></li>
                <li><a href="VendorsPage.aspx">VENDORS</a></li>
                <li><a href="Location.aspx">LOCATION</a></li>
            </ul>
            <div id="google_translate_element"></div>

            <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
                }
            </script>
            <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        </nav>
        <!-- Intro -->
        <div class="intro">
            <h1>CONNECTING VENDORS</h1>
            <a href="#" class="btn">Connect With Your Vendor</a>
        </div>
    </header>

    <!--Benefits  -->
    <section class="section benefits">
        <div class="benefit-center box">
            <div class="benefit">
                <span class="icon"><i class="bx bx-purchase-tag"></i></span>
                <h4>Vendors On Fingertip</h4>
                <span class="text">Search for vendors nearest to you</span>
            </div>
            <div class="benefit">
                <span class="icon"><i class="bx bx-book-reader"></i></span>
                <h4>Feasiable Website</h4>
                <span class="text">Easy to use Website</span>
            </div>
            <div class="benefit">
                <span class="icon"><i class="bx bx-headphone"></i></span>
                <h4>24/7 Support</h4>
                <span class="text">We are always there to help you</span>
            </div>
        </div>
    </section>

    <!-- New Arrivals -->
    <section class="section">
        <div class="h">
            <h1><span>New</span> Shops</h1>
        </div>
        <div class="ac-center box">
            <div class="ac">
                <div class="img-cover">
                    <img src="images/pqrimg.jpg" alt="" />
                </div>
                <p>pqr shop</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                </div>
                <div class="price">---</div>
            </div>

            <div class="ac">
                <div class="img-cover">
                    <img src="images/uvwimg.jpg" alt="" />
                </div>
                <p>uvw shop</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>

            <div class="ac">
                <div class="img-cover">
                    <img src="images/defimg.jpg" alt="" />
                </div>
                <p>def shop </p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
            <div class="ac">
                <div class="img-cover">
                    <img src="images/panipuri.jpg" alt="" />
                </div>
                <p>ijk shop</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
        </div>
    </section>

    <!-- Search By Category -->
    <section class="section">
        <div class="h">
            <h1><span>Search By</span> Categories</h1>
        </div>
        <div class="ab box">
            <div class="item item-1">
                <img src="images/newspaper.jpg" alt="" />
            </div>
            <div class="item item-2">
                <img src="images/fruit1.jpg" alt="" />
            </div>
            <div class="item item-3">
                <img src="images/chinese.jpg" alt="" />
            </div>
            <div class="item item-4">
                <img src="images/falooda.jpg" alt="" />
            </div>
        </div>
    </section>

    <!-- Popular Products -->
    <section class="section">
        <div class="h">
            <h1>Popular <span>Vendors</span></h1>
        </div>
        <div class="ac-center box">
            <div class="ac">
                <div class="img-cover">
                    <img src="images/pqrimg.jpg" alt="" />
                </div>
                <p>pqr Tender Coconut Shop</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>

            <div class="ac">
                <div class="img-cover">
                    <img src="images/mainsiteimg3.jpg" alt="" />
                </div>
                <p>abc Flower Shop</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>

            <div class="ac">
                <div class="img-cover">
                    <img src="images/fruit2.jpg" alt="" />
                </div>
                <p>uvw Fruit Stall</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
            <div class="ac">
                <div class="img-cover">
                    <img src="images/hand4.jpg" alt="" />
                </div>
                <p>Accessory Vendor</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
            <div class="ac">
                <div class="img-cover">
                    <img src="images/slip4.jpg" alt="" />
                </div>
                <p>Footwear Stall</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
            <div class="ac">
                <div class="img-cover">
                    <img src="images/wallet3.jpg" alt="" />
                </div>
                <p>Newspaper Stall</p>
                <div class="rating">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bx-star"></i>
                </div>
                <div class="price">---</div>
            </div>
        </div>
    </section>

    <!-----footer-------------------->
    <section id="footer">
        <div class="foot">
            <ul>
                <li><a href="Home.aspx">HOME</a></li>
                <li><a href="aboutus.html">ABOUT US</a></li>
                <li><a href="ContactUs.aspx">CONTACT US</a></li>
            </ul>
            <div class="social-links">
                <a href="Linked IN"><i class="fab fa-linkedin"></i></a>
                <a href="abc"><i class="fab fa-behance"></i></a>
                <a href="xyz"><i class="fab fa-dribbble"></i></a>
                <a href="pqr"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </section>
</body>
</html>
