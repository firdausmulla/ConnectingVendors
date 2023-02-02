+<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Connecting Vendors</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="signup.js"></script>">
    <!---- CSS Style ------>
    <style>
        body {
            color: #fff;
            background: #2389cd;
            font-family: 'Roboto', sans-serif;
        }

        .form-control {
            height: 41px;
            background: #f2f2f2;
            box-shadow: #3598dc;
            border: 2px;
        }

            .form-control:focus {
                background: #e2e2e2;
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
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .signup-form h2 {
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
            }

            .signup-form .row div:last-child {
                padding-left: 10px;
            }

            .signup-form .btn {
                font-size: 16px;
                font-weight: bold;
                background: #3598dc;
                border: none;
                min-width: 140px;
            }

                .signup-form .btn:hover, .signup-form .btn:focus {
                    background: #2389cd !important;
                    outline: none;
                }

            .signup-form a {
                color: #fff;
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
            }
    </style>
</head>
<body>
    <div class="signup-form">
        <form id="form1" method="post" runat="server">
            <h2>Sign Up</h2>
            <p>To create your account</p>
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
                        <option value="2">Mumbai</option>
                        <option value="3">Pune</option>
                        <option value="4">Banglore</option>
                        <option value="5">Surat</option>
                    </select>
                </div>
            </div>
               <br>
            <p> <b>Contact Details: </b></p>
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
                        <button type="submit" id= "UserSignup" OCclick= "SignUp();" class="btn btn-primary btn-lg">Sign Up</button>
                    </center>
                </div>
            

</form>
        <div class="hint-text">Already have an account? <br><a href="UserLogin.aspx">Login</a>
        </div>
    </div>
    
</body>
</html>

