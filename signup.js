$(document).ready(function () {
    $("#UserSignup").click(function () {
        var UserName = $('#fname').val();
        var UserEmail = $('#email').val();
        var UserAddr = $('#addr').val();
        var UserState = $('#ustate').val();
        var UserCity = $('#ucity').val();
        var UserPno1 = $('#pno1').val();
        var UserPno2 = $('#pno2').val();
        var UserUname = $('#uname').val();
        var UserPwd = $('#password').val();

        var obj = {};
        obj.username = UserName;
        obj.useremail = UserEmail;
        obj.useraddr = UserAddr;
        obj.userstate = UserState;
        obj.usercity = UserCity;
        obj.userpno1 = UserPno1;
        obj.userpno2 = UserPno2;
        obj.useruname = UserUname;
        obj.userpwd = UserPwd;

        if (UserName.value == "" || UserEmail.value == "" || UserAddr == "" || UserState == "" || UserCity == "" || UserPno1 == "" || UserUname == "" || UserPwd == "") {
            alert("Please fill all the details")
            return false;
        }
        else {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "SignUp.aspx/InsertRecord",
                data: JSON.stringify(obj),
                datatype: "json",
                success: function (data) {
                    // Registration Success
                    if (data.d == '1') {
                        alert("Registered Successfully!")
                        window.location.href = "Home.aspx?username=" + obj.useruname;
                    }
                    else {
                        alert("Registration Unsuccessful, Please try again.")
                    }
                }
            })
        }
    })
})