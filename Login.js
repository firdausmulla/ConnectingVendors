$(document).ready(function () {
    $("#UserLogin").click(function () {
        event.preventDefault();
        var UserUname = document.getElementById("uname").value;
        var UserPwd = document.getElementById("password").value;

        var obj = {};
        obj.useruname == UserUname;
        obj.userpwd == UserPwd;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "UserLogin.aspx/LoginRecord");
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onload = function () {
            if (xhr.status === 200) {
                alert("Login Successful!")
            } else {
                alert("Login unsuccessful, Please check your username, password and try again.")
            }
        };
        xhr.send(JSON.stringify({ useruname: UserUname, userpwd: UserPwd }));
    });
})
