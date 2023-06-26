<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap");

        html {
            box-sizing: border-box;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        body {
            font-family: "Poppins", sans-serif;
            font-size: 18px;
            color: black;
            background-color: whitesmoke;
        }

        img {
            max-width: 100%;
        }


        /* HEADER */
        .logob {
            width: 70px;
            height: 60px;
            cursor: pointer;
        }

        nav {
            width: 84%;
            margin: auto;
            padding: 20px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

            nav ul li {
                display: inline-block;
                list-style: none;
                margin: 10px 20px;
            }

                nav ul li a {
                    text-decoration: none;
                    color: #606163;
                }

                    nav ul li a:hover {
                        color: #ff4321;
                    }

        .d {
            display: flex;
            align-items: center;
        }

        .align-center {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media only screen and (max-width: 768px) {
            nav {
                padding: 16px 0;
            }

            .icons {
                display: none;
            }

            .logob {
                width: 100px;
                height: 80px;
                cursor: pointer;
            }
        }

        .column {
            float: left;
            width: 33.3%;
            margin-bottom: 16px;
            padding: 0 8px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
        }

        .about-section {
            padding: 50px;
            text-align: center;
            background-color: #95A9EE;
            color: white;
        }

        .mydiv {
            background-image: url(../images/aboutusimage.jpeg);
            background-size: cover;
            background-position: center;
            height: 200px;
        }


        .container {
            padding: 0 16px;
            font-size: 15px;
        }

            .container::after, .row::after {
                content: "";
                clear: both;
                display: table;
            }

        .title {
            color: lightsteelblue;
        }

        .button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
        }

            .button:hover {
                background-color: #555;
            }

        @media screen and (max-width: 650px) {
            .column {
                width: 90%;
                display: block;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
        <nav>
            <img src="images/websiteicon.jpg" class="logob" />
            <ul>
                <li><a href="Home1.aspx">HOME</a></li>
                <li><a href="aboutus.html">ABOUT US</a></li>
                <li><a href="VendorsPage.aspx" class="active">VENDORS</a></li>
                <li><a href="Location.aspx">LOCATION</a></li>
                <li><a href="VendSignUp.aspx">Become a Vendor</a></li>
            </ul>
            <div id="google_translate_element"></div>

            <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
                }
            </script>
            <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        </nav>

        <div class="about-section">
            <h1>ABOUT US</h1>
            <h3>Vendor's Place</h3>
            <p>This website helps people to connect to their nearest vendors.</p>
            <p>This platform makes it simpler for customers to find the things they require, while also assisting sellers to become more visible and reach a bigger audience. Users may conveniently look for vendors and items while on the go. It aims to simplify the process of connecting buyers and vendors, making it easier for both parties to find each other and conduct business.</p>
        </div>
        <div class="mydiv">
            <p>

            </p>
        </div>
    </header>

    <h2 style="text-align:center">Our Team</h2>
    <div class="row">
        <div class="column">
            <div class="card">
                <div class="container">
                    <h2>Firdaus Mulla</h2>
                    <p>firdausmulla@gmail.com</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <div class="container">
                    <h2>Vanshika Sathyan</h2>
                    <p>vs25052001@gmail.com</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <div class="container">
                    <h2>Supriya Thakur</h2>
                    <p>supriyathakur@gmail.com</p>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
