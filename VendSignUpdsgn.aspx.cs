using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class VendSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void VendSignup_Click(object sender, EventArgs e) {
        String CS = ConfigurationManager.ConnectionStrings["connectingvendors"].ConnectionString;
        string name = Request.Form["sname"];
        string vname = Request.Form["vend_name"];
        string catg = Request.Form["scatg"];
        string eid = Request.Form["s_email"];
        string addr = Request.Form["s_addr"];
        string sstate = Request.Form["s_state"];
        string scity = Request.Form["s_city"];
        string cntd = Request.Form["s_num1"];
        string hrsfrom = Request.Form["fromhrs"];
        string hrsto = Request.Form["tohrs"];
        string vuname = Request.Form["vend_uname"];
        string vpwd = Request.Form["vend_password"];
        using (SqlConnection con = new SqlConnection(CS)) 
        {
        
            SqlCommand cmd = new SqlCommand("insert into Shop(ShopID, ShopName, VendorName, ShopCategory, Email-Id, Address, State, City, ContactDetails, AvailableHoursFrom, AvailableHoursTo, Username, Password) " +
                "values('', '"+name+"', '"+vname+"', '"+catg+"', '"+eid+"', '"+addr+"', '"+sstate+"', '"+scity+"', '"+cntd+"', '"+hrsfrom+"', '"+hrsto+"', '"+vuname+"', '"+vpwd+"')", con);
        }
        string veid = Request.Form["vend_email"];
        string vaddr = Request.Form["vend_addr"];
        string vstate = Request.Form["v_state"];
        string vcity = Request.Form["v_city"];
        string vcntd = Request.Form["vend_num1"];
        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand cmd = new SqlCommand("insert into Vendors( VendID, Vendor Name, Email-Id, Resd Addr, State, City, ContactDetails)" +
                "values('', '" + vname + "', '" + veid + "', '" + vaddr + "', '" + vstate + "', '" + vcity + "', '" + vcntd + "')", con);
        }

    }
}