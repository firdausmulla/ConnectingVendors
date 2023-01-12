﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ULogin.aspx.cs" Inherits="ULogin" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Connecting Vendors Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <style>
        body {
            color: #fff;
            background: #D872DD;
            font-family: 'Roboto', sans-serif;
        }
        .form-control {
            height: 41px;
            background: #f2f2f2;
            box-shadow: none !important;
            border: none;
        }

            .form-control:focus {
                background: #e2e2e2;
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
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .ulogin-form h2 {
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
            }

            .ulogin-form .row div:last-child {
                padding-left: 10px;
            }

            .ulogin-form .btn {
                font-size: 16px;
                font-weight: bold;
                background: #3598dc;
                border: none;
                min-width: 140px;
            }

                .ulogin-form .btn:hover, .ulogin-form .btn:focus {
                    background: #2389cd !important;
                    outline: none;
                }

            .ulogin-form a {
                color: #fff;
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
            }

            .btn-google {
                color: white !important;
                background-color: #ea4335;

            }
            
            .btn-facebook {
                color: white !important;
                background-color: #3b5998;

            }

    </style>
</head>
<body>
    <div class="ulogin-form">
        <form id="form1" runat="server">
            <h2>Login</h2>
            <p>Sign into your account</p>
            <hr>

            <div class="form-group">
                <input type="text" class="form-control" name="uname" placeholder="Enter Email-Id or Username" required="required">
            </div>

            <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Enter Password" required="required">
                </div>

            <div class="hint-text">Forgot Password? <a href="ForgetPassword">Click Here</a>
            </div>

            <div class="form-group">
                    <center>
                        <button type="submit" class="btn btn-primary btn-lg">Login</button>
                    </center>
            </div>
        </form>
            <div class="hint-text">Don't have an account? <br><a href="SignUp.aspx">Sign Up</a>
        </div>
    </div>
</body>
</html>
