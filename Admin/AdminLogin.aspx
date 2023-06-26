<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center bg-primary text-white">
						<h4>Admin Login Form</h4>
					</div>
					<div class="card-body">
						<form method="post" id="form1" action="Admin.aspx">
							<div class="form-group">
								<label for="username">Username:</label>
								<input type="text" class="form-control" id="username" name="username" placeholder="Enter username" />
							</div>
							<div class="form-group">
								<label for="password">Password:</label>
								<input type="password" class="form-control" id="password" name="password" placeholder="Enter password" />
							</div>
							<button type="button" id="Adminbtn" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
        $(document).ready(function () {
            $("#Adminbtn").click(function () {
                var username = $('#username').val();
                var password = $('#password').val();

                var obj = {
                    username: username,
                    password: password
                };
                if (username.value == "" || password.value == "") {
                    alert("Please fill all the details");
                } else {
                    // perform operation with form input
                    $.ajax({
                        type: "POST",
                        contentType: "application/json",
                        url: "AdminLogin.aspx/Login",
                        data: JSON.stringify(obj),
                        dataType: "json",
                        success: function (data) {
                            if (data.d == '1') {
                                alert("Login Successful!");
                                window.location.href = "Admin.aspx";
                            } else {
                                alert("Invalid username or password, please try again.");
                            }
                        },
                        error: function () {
                            alert("An error occurred, please try again later.");
                        }
                    });
                }
            });
            username.value = "";
            password.value = "";
        });
    </script>
</body>
</html>
