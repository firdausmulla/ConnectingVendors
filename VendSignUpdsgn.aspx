<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendSignUpdsgn.aspx.cs" Inherits="VendSignUp" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <title>Vendors Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <style>
        body {
            color: #fff;
            background: #000000;
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

        .signup-form {
            width: 690px;
            margin: 40px auto;
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
                margin-bottom: 30px;
            }

            .signup-form input[type="checkbox"] {
                margin-top: 5px;
            }

            .signup-form .row div:first-child {
                padding-right: 20px;
            }

            .signup-form .row div:last-child {
                padding-left: 20px;
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
                padding-bottom: 25px;
                text-align: center;
            }
    </style>
</head>
<body>
    <div class="signup-form">
        <form id="form1" runat="server">
            <h2>Register Your Shop</h2>
            <p>And Become our Member Vendor!</p>
            <hr>
            <p style="color:red;"><b>Shop Details</b></p>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-6"><input type="text" class="form-control" name="sname" placeholder="Shop Name" required="required"></div>
                    <div class="col-xs-6"><input type="text" class="form-control" name="scatg" placeholder="Shop Category" required="required"></div>
                </div>
            </div>

            <div class="form-group">
                <input type="email" class="form-control" name="s_email" placeholder="Email-Id" required="required">
            </div>
            
            <div class="form-group">
                <input type="text" class="form-control" name="s_addr" placeholder="Address" required="required">
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">

                    <select class="select">
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

                    <select class="select">
                        <option value="1">City</option>
                        <option value="2">Mumbai</option>
                        <option value="3">Pune</option>
                        <option value="4">Banglore</option>
                        <option value="5">Surat</option>
                    </select>
                </div>
            </div>
            <br>
            <p> <b>Shop Contact Details: </b></p>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6"><input type="number" class="form-control" name="s_num1" placeholder="Phone No.1" required="required"></div>
                        <div class="col-xs-6"><input type="number" class="form-control" name="s_num2" placeholder="Phone No.2"></div>
                    </div>
                </div>
            <div class="form-group">
                 <div class="row">
                     <div class="col-xs-4"><p>Active Hours </p></div>
                     <div class="col-xs-4"><input type="text" class="form-control" name="fromhrs" placeholder="From: " required="required"></div>
                     <div class="col-xs-4"><input type="text" class="form-control" name="tohrs" placeholder="To: " required="required"></div>
                 </div>
                     
            </div>

            <div class="row">
                <div class="form-group">
                    <div class="col-xs-4"><p> Do You Provide Delivery?</p></div>
                    <div class="col-xs-2"><label class="checkbox-inline"><input type="checkbox">Yes</label></div>
                    <div class="col-xs-2"><label class="checkbox-inline"><input type="checkbox">No</label></div>
                    </div>
                </div>

            <hr>
            <p style="color:red;"><b>Personal Details</b></p>
            <div class="form-group">
                <input type="text" class="form-control" name="vend_name" placeholder="Your Name" required="required">
            </div>

            <div class="form-group">
                <input type="email" class="form-control" name="vend_email" placeholder="Your Email-Id" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="vend_addr" placeholder="Residential Address">
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">

                    <select class="select">
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

                    <select class="select">
                        <option value="1">City</option>
                        <option value="2">Mumbai</option>
                        <option value="3">Pune</option>
                        <option value="4">Banglore</option>
                        <option value="5">Surat</option>
                    </select>
                </div>
            </div>
               <br>
            <p> <b>Your Contact Details: </b></p>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6"><input type="number" class="form-control" name="vend_num1" placeholder="Phone No.1" required="required"></div>
                        <div class="col-xs-6"><input type="number" class="form-control" name="vend_num2" placeholder="Phone No.2"></div>
                    </div>
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" name="vend_uname" placeholder="Create Username" required="required">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" name="vend_password" placeholder="Create Password" id="password" required="required">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" id="confirm_password" required="required">
                </div>
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
                        <button type="submit" class="btn btn-primary btn-lg">Sign Up</button>
                    </center>
                </div>
</form>
        <div class="hint-text">Already have an account? <br><a href="VendLogin.aspx">Login</a>
        </div>
    </div>
</body>
</html>

