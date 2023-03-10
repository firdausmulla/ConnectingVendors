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
        var VendAddr = $('#vendaddr').val();
        var VendState = $('#vstate').val();
        var VendCity = $('#vcity').val();
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
        obj.uname = Uname;
        obj.pwd = Pwd;
        obj.vname = VendName;
        obj.vemail = VendEmail;
        obj.vaddr = VendAddr;
        obj.vstate = VendState;
        obj.vcity = VendCity;
        obj.vpno1 = VendPno1;
        obj.vpno2 = VendPno2;

        if (ShopName.value == "" || ShopCatg.value == "" || ShopEmail.value == "" || ShopAddr == "" || ShopState == "" || ShopCity == "" || ShopPno1 == "" || AvlHrsFrm == "" || AvlHrsTo == "" || VendName.value == ""  || VendEmail.value == "" || VendAddr.value == "" || VendState.value == "" || VendCity.value == "" || VendPno1.value == "" || Uname == "" || Pwd == "") {
            alert("Please fill all the details")
            return false;
        }
        else {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "VendSignUp.aspx/InsertVendRecord",
                data: JSON.stringify(obj),
                datatype: "json",
                success: function (data) {
                    // Registration Success
                    if (data.d == '1') {
                        alert("Registered Successfully!")
                    }
                    else {
                        alert("Registration Unsuccessful, Please try again.")
                    }
                }
            })
        }
    })
})