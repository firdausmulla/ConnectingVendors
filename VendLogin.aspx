<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <title>Vendor's Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="vendlogin.js"></script>
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <!---- CSS Style ------>
    <style>
        body {
            color: #fff;
            background: #fff;
            font-family: 'Poppins', sans-serif;
        }
        .form-control {
            height: 41px;
            background: #fff;
            box-shadow: #3598dc;
            border: 2px;
        }

            .form-control:focus {
                background: #61b6f0ae;
            }

        .form-control, .btn {
            border-radius: 3px;
        }

        .ulogin-form {
            width: 390px;
            margin: 30px auto;
        }
            
            .ulogin-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fab788;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.8);
                padding: 30px;
            }

            .ulogin-form h1 {
                color: #333;
                font-weight: bold;
                margin-top: 0;
            }

            .ulogin-form hr {
                margin: 0 -30px 20px;
            }

            .ulogin-form .form-group {
                margin-bottom: 20px;
            }

            .ulogin-form input[type="checkbox"] {
                margin-top: 3px;
            }

            .ulogin-form .row div:first-child {
                padding-right: 10px;
                color: dimgrey;
            }

            .ulogin-form .row div:last-child {
                padding-left: 10px;
                color: dimgrey;
            }

            .ulogin-form .btn {
                font-size: 16px;
                font-weight: bold;
                background: #ffd800;
                border: none;
                min-width: 140px;
            }

                .ulogin-form .btn:hover, .ulogin-form .btn:focus {
                    background: #2389cd !important;
                    outline: none;
                }

            .ulogin-form a {
                color: #3598dc;
                text-decoration: underline;
            }
                
                .ulogin-form a:hover {
                    text-decoration: none;
                }

            .ulogin-form form a {
                color: #3598dc;
                text-decoration: none;
            }
                
                .ulogin-form form a:hover {
                    text-decoration: underline;
                }

            .ulogin-form .hint-text {
                padding-bottom: 15px;
                text-align: center;
                background: #fab788;
            }

    </style>
</head>
<body>
    <div class="ulogin-form">
        <form id="form1" method = " post" runat="server">
            <h1>Login</h1>
            <h4 style= "color:dimgrey;">To Enter Your Shop!</h4>
            <hr>

            <div class="form-group">
                <input type="text" class="form-control" id="uname" placeholder="Enter Username" required="required">
            </div>

            <div class="form-group">
                    <input type="password" class="form-control" id="password" placeholder="Enter Password" required="required">
                </div>

            <div class="form-group">
                    <center>
                        <button type = "button" id = "VendLogin" class="btn btn-primary btn-lg">Login</button>
                    </center>
            </div>
        </form>
            <div class="hint-text">Don't have a shop register ? <br><a href="VendSignUp.aspx">Register Here</a>
        </div>
    </div>
</body>
</html>

