<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendSignUp.aspx.cs" Inherits="VendSignUp" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <title>Vendors Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="vendsignup.js"></script>
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

             <!----Shop Detail  ----->
            <p style="color:red;"><b>Shop Details</b></p>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-6"><input type="text" ID="txtsname" class="form-control" placeholder="Shop Name" required="required"></div>
                    <div class="col-xs-6"><input type="text" class="form-control" ID="scatg" placeholder="Shop Category" required="required"></div>
                </div>
            </div>

            <div class="form-group">
                <input type="email" class="form-control" id="semail" placeholder="Email-Id" required="required">
            </div>
            
            <div class="form-group">
                <input type="text" class="form-control" id="saddr" placeholder="Address" required="required">
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">

                    <select class="select" runat ="server" id="sstate" >
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

                    <select class="select" runat="server" id="scity">
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
                        
                    </select>
                </div>
            </div>
            <br>
            <p> <b>Shop Contact Details: </b></p>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6"><input type="number" class="form-control" id="snum1" placeholder="Phone No.1" required="required"></div>
                        <div class="col-xs-6"><input type="number" class="form-control" id="snum2" placeholder="Phone No.2"></div>
                    </div>
                </div>
            <div class="form-group">
                 <div class="row">
                     <div class="col-xs-4"><p>Active Hours </p></div>
                     <div class="col-xs-4"><input type="text" class="form-control" ID="fromhrs" placeholder="From: " required="required"></div>
                     <div class="col-xs-4"><input type="text" class="form-control" ID="tohrs" placeholder="To: " required="required"></div>
                 </div>
                     
            </div>

            <div class="row">
                <div class="form-group">
                    <div class="col-xs-4"><p> Do You Provide Delivery?</p></div>
                    <div class="col-xs-2"><label class="checkbox-inline"><input type="checkbox">Yes</label></div>
                    <div class="col-xs-2"><label class="checkbox-inline"><input type="checkbox">No</label></div>
                    </div>
                </div>

            <!----Vendors Detail  ----->
            <hr>
            <p style="color:red;"><b>Personal Details</b></p>
            <div class="form-group">
                <input type="text" class="form-control" id="vendname" placeholder="Your Name" required="required">
            </div>

            <div class="form-group">
                <input type="email" class="form-control" id="vendemail" placeholder="Your Email-Id" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="vendaddr" placeholder="Residential Address">
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">

                    <select class="select" id="vstate" >
                        <option value="1">State</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option> 
                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                            <option value="Assam" name="v_state">Assam</option>
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

                    <select class="select" id="vcity">
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
                    </select>
                </div>
            </div>
               <br>
            <p> <b>Your Contact Details: </b></p>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6"><input type="number" class="form-control" id="vendnum1" placeholder="Phone No.1" required="required" aria-atomic="True" aria-autocomplete="both"></div>
                        <div class="col-xs-6"><input type="number" class="form-control" id="vendnum2" placeholder="Phone No.2"></div>
                    </div>
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" id="venduname" placeholder="Create Username" required="required">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Create Password" id="password" required="required">
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
                        <button type="button" ID="VendSignup" name="VendSignup" class="btn btn-primary btn-lg">Sign Up</button>
                    </center>
                </div>
</form>
        <div class="hint-text">Already have an account? <br><a href="VendLogin.aspx">Login</a>
        </div>
    </div>
</body>
</html>

