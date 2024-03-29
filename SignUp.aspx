﻿+<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User's Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="signup.js"></script>
    <!--Translate Link--->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <!---- CSS Style ------>
    <style>
        body {
            color: #fff;
            background-image: url(https://neokyo.com/img/opengraph/Neokyo_How-to-buy.jpg);
            background-position: center center;
            background-repeat:no-repeat;
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

        .signup-form {
            width: 390px;
            margin: 30px auto;
        }

            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fab788;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.8);
                padding: 30px;
            }

            .signup-form h1 {
                color: #333;
                font-weight: bold;
                margin-top: 0;
            }

            .signup-form hr {
                margin: 0 -30px 20px;
            }

            .signup-form .form-group {
                margin-bottom: 20px;
            }

            .signup-form input[type="checkbox"] {
                margin-top: 3px;
            }

            .signup-form .row div:first-child {
                padding-right: 10px;
                color: dimgrey;
            }

            .signup-form .row div:last-child {
                padding-left: 10px;
                color: dimgrey;
            }

            .signup-form .btn {
                font-size: 16px;
                font-weight: bold;
                background: #ffd800;
                border: 50px;
                min-width: 140px;
            }

                .signup-form .btn:hover, .signup-form .btn:focus {
                    background: #2389cd !important;
                    outline: none;
                }

            .signup-form a {
                color: #3598dc;
                text-decoration: underline;
            }

                .signup-form a:hover {
                    text-decoration: none;
                }

            .signup-form form a {
                color: #3598dc;
                text-decoration: none;
            }

                .signup-form form a:hover {
                    text-decoration: underline;
                }

            .signup-form .hint-text {
                padding-bottom: 15px;
                text-align: center;
                background: #fab788;
            }
    </style>
</head>

<body>
    <div class="signup-form">
        <form id="form1" method="post" runat="server">
            <h1>Sign Up</h1>
            <h4 style= "color:dimgrey;">To create your account</h4>
            <hr>

            <div class="form-group">
                <input type="text" class="form-control" runat="server" id="fname" placeholder="Name" required="required">
            </div>

            <div class="form-group">
                <input type="email" class="form-control" runat="server" id="email" placeholder="Email-Id" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" runat="server" id="addr" placeholder="Address" required="required">
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">
                    <!----State---->
                    <select class="select" runat="server" id="ustate">
                        <option value="1">State</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option> 
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal pradesh</option>
                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>
                    </select>

                </div>
                <div class="col-md-6 mb-4">
                    <!----City---->
                    <select class="select" runat="server" id="ucity">
                        <option value="1">City</option>
                        <option value="Agra">Agra</option>
                        <option value="Ahemdabad">Ahemdabad</option>
                        <option value="Aurangabad">Aurangabad</option>
                        <option value="Banglore">Banglore</option>
                        <option value="Baroda">Baroda</option>
                        <option value="Banaras">Banaras</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Coorg">Coorg</option>
                        <option value="Darjeeling">Darjeeling</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Faridabad">Faridabad</option>
                        <option value="Guwahati">Guwahati</option>
                        <option value="Gandhinagar">Gandhinagar</option>
                        <option value="Hyderabad">Hyderabad</option>
                        <option value="Jaipur">Jaipur</option>
                        <option value="Jhansi">Jhansi</option>
                        <option value="Surat">Surat</option>
                        <option value="Kasauli">Kasauli</option>
                        <option value="Kolkatta">Kolkata</option>
                        <option value="Delhi">Kota</option>
                        <option value="Lucknow">Lucknow</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Nashik">Nashik</option>
                        <option value="Nagpur">Nagpur</option>
                        <option value="Ooty">Ooty</option>
                        <option value="Palghar">Palghar</option>
                        <option value="Pune">Pune</option>
                        <option value="Ranchi">Ranchi</option>
                        <option value="Ratnagiri">Ratnagiri</option>
                        <option value="Surat">Surat</option>
                        <option value="Tirupati">Tirupati</option>
                        <option value="Udaipur">Udaipur</option>
                        <option value="Visakhapatnam">Visakhapatnam</option>
                        <option value="Other">Other</option>
                        
                    </select>
                </div>
            </div>
               <br>
            <p style="color:dimgrey;"><b>Contact Details: </b></p>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6"><input type="text" class="form-control" runat="server" name="num1" id="pno1" placeholder="Phone No.1" required="required"></div>
                        <div class="col-xs-6"><input type="text" class="form-control" runat="server" name="num2" id="pno2" placeholder="Phone No.2"></div>
                    </div>
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" runat="server" id="uname" placeholder="Create Username" required="required">

                   
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" runat="server" name="password"  placeholder="Create Password" id="password" required="required">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" runat="server" name="confirm_password" placeholder="Confirm Password" id="confirm_password" required="required">
                </div>
                <!---Password Validation--->
                <script>var password = document.getElementById("password")
                        , confirm_password = document.getElementById("confirm_password");

                    function validatePassword() {
                        if (password.value != confirm_password.value) {
                            confirm_password.setCustomValidity("Passwords Don't Match");
                        } else {
                            confirm_password.setCustomValidity('');
                        }
                    }

                    password.onchange = validatePassword;
                    confirm_password.onkeyup = validatePassword;
                </script>
            
                <div class="form-group">
                    <center>
                        <button type="button" id= "UserSignup" class="btn btn-primary btn-lg">Sign Up</button>
                    </center>
                </div>
</form>
        <div class="hint-text"><b>Already have an account?</b> <br><a href="UserLogin.aspx">Login</a>
        </div>
    </div>
    
</body>
</html>

