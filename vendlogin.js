﻿$(document).ready(function () {
    $("#VendLogin").click(function () {
        var userUname = $('#uname').val();
        var userPwd = $('#password').val();

        var obj = {
            useruname: userUname,
            userpwd: userPwd
        };

        if (userUname == "" || userPwd == "") {
            alert("Please fill in all the details.");
            return false;
        } else {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "VendLogin.aspx/LoginRecord",
                data: JSON.stringify(obj),
                dataType: "json",
                success: function (data) {
                    if (data.d == '1') {
                        alert("Login Successful!");
                        window.location.href = "VendorsHandle.aspx?vendname=" + userUname;
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
});