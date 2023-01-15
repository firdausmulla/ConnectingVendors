﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignUpCode.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="utf-8">
    <title>Connecting Vendors</title>
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

            .signup-form .hint-text {
                padding-bottom: 15px;
                text-align: center;
            }
    </style>
</head>
<body>
    <div class="signup-form">
        <form id="form1" runat="server">
            <h2>Sign Up</h2>
            <p>To create your account</p>
            <hr>
            <div style="max-width: 1000px;">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Name" required="required"/>
                <br/>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Email-Id" required="required"/>
                <br/>
                
                <asp:TextBox ID="txtaddr" runat="server" CssClass="form-control" placeholder="Address" required="required"/>
                <br/>
                <div class="row">
                    <div class="col-md-6 mb-4">
                        <asp:DropDownList ID="StateList" runat="server" required="required">
                            <asp:ListItem Text="State" Value="State" />
                            <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                            <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                            <asp:ListItem Text="Assam" Value="Assam" />
                            <asp:ListItem Text="Bihar" Value="Bihar" />
                            <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                            <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                            <asp:ListItem Text="Goa" Value="Goa" />
                            <asp:ListItem Text="Gujarat" Value="Gujarat" />
                            <asp:ListItem Text="Haryana" Value="Haryana" />
                            <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                            <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                            <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                            <asp:ListItem Text="Karnataka" Value="Karnataka" />
                            <asp:ListItem Text="Kerala" Value="Kerala" />
                            <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                            <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                            <asp:ListItem Text="Manipur" Value="Manipur" />
                            <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                            <asp:ListItem Text="Mizoram" Value="Mizoram" />
                            <asp:ListItem Text="Nagaland" Value="Nagaland" />
                            <asp:ListItem Text="Odisha" Value="Odisha" />
                            <asp:ListItem Text="Punjab" Value="Punjab" />
                            <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                            <asp:ListItem Text="Sikkim" Value="Sikkim" />
                            <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                            <asp:ListItem Text="Telangana" Value="Telangana" />
                            <asp:ListItem Text="Tripura" Value="Tripura" />
                            <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                            <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                            <asp:ListItem Text="West Bengal" Value="West Bengal" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 mb-4">
                        <asp:DropDownList ID="CityList" runat="server" required="required">
                            <asp:ListItem Text="City" Value="City" />
                                <asp:ListItem Text="Mumbai" Value="Mumbai" />
                        </asp:DropDownList>
                    </div>
                </div>
                <br/>
                
                <b>Contact Details: </b>
                    <div class="row">
                        <div class="col-xs-6"><asp:TextBox ID="txtNum1" runat="server" CssClass="form-control" placeholder="Phone No.1" TextMode="Number" required="required"></asp:TextBox></div>
                        <div class="col-xs-6"><asp:TextBox ID="txtNum2" runat="server" CssClass="form-control" placeholder="Phone No.2" TextMode="Number"></asp:TextBox></div>
                    </div>
                <br/>
                
                <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Create Username" required="required"/>
                <br/>

                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Password must contain: Minimum 8 characters at-least 1 Alphabet and 1 Number"
            CssClass="form-control" placeholder="Create Password" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"/>
        <br/>
        
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" required="required"/>
        <br/>
        
        <center>
            <asp:Button ID="btnSignup" runat="server" Text="Sign up" CssClass="btn btn-primary"/>
        </center>
    </div>

        </form>
        <div class="hint-text">Already have an account? <br><a href="ULogin.aspx">Login</a>
        </div>
    </div>
    
</body>
</html>
