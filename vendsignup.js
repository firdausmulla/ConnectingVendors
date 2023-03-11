$(document).ready(function () {
    $("#VendSignup").click(function () {
        var ShopName = $('#txtsname').val();
        var ShopCatg = $('#scatg').val();
        var ShopEmail = $('#semail').val();
        var ShopAddr = $('#saddr').val();
        var ShopState = $('#sstate').val();
        var ShopCity = $('#scity').val();
        var ShopPno1 = $('#snum1').val();
        var ShopPno2 = $('#snum2').val();
        var AvlHrsFrm = $('#fromhrs').val();
        var AvlHrsTo = $('#tohrs').val();

        var VendName = $('#vendname').val();
        var VendEmail = $('#vendemail').val();
        var VendPno1 = $('#vendnum1').val();
        var VendPno2 = $('#vendnum2').val();

        var Uname = $('#venduname').val();
        var Pwd = $('#password').val();

        var obj = {};
        obj.sname = ShopName;
        obj.scatg = ShopCatg;
        obj.semail = ShopEmail;
        obj.saddr = ShopAddr;
        obj.sstate = ShopState;
        obj.scity = ShopCity;
        obj.spno1 = ShopPno1;
        obj.spno2 = ShopPno2;
        obj.avlhrsfrm = AvlHrsFrm;
        obj.avlhrsto = AvlHrsTo;
        obj.vname = VendName;
        obj.vemail = VendEmail;
        obj.vpno1 = VendPno1;
        obj.vpno2 = VendPno2;
        obj.uname = Uname;
        obj.pwd = Pwd;
        

        if (ShopName == "" || ShopCatg == "" || ShopEmail == "" || ShopAddr == "" || ShopState == "" || ShopCity == "" || ShopPno1 == "" || AvlHrsFrm == "" || AvlHrsTo == "" || VendName == "" || VendEmail == "" || VendPno1 == "" || Uname == "" || Pwd == "") {
            alert("Please fill all the details")
            return false;
        }
        else {
            $.ajax({
                type: "POST",
                url: "VendSignUp.aspx/InsertVendRecord",
                data: JSON.stringify(obj),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    // Registration Success
                    if (data.d == '1') {
                        alert("Registered Successfully!")
                        window.location.href = `VendorsPage.aspx?username=${obj.uname}`;
                    }
                    else {
                        alert("Registration Unsuccessful, Please try again.")
                    }
                }
            })
        }
    })
})