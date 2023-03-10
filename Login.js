$(document).ready(function () {
    $("#UserLogin").click(function (event) {
        event.preventDefault();
        var UserUname = document.getElementById("uname").value;
        var UserPwd = document.getElementById("password").value;

        var obj = {};
        obj.useruname = UserUname;
        obj.userpwd = UserPwd;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "UserLogin.aspx/LoginRecord");
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.send(JSON.stringify(obj));
        xhr.onload = function () {
            if (xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                if (response.success) {
                    window.location.href = "Home.aspx?user=" + response.userprofile;
                } else {
                    alert("Login unsuccessful, Please check your username, password and try again.")
                }
            } else {
                alert("Error: " + xhr.statusText);
            }
        };
    });
})