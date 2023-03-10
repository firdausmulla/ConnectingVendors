using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Services;

public partial class VendSignUp : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string InsertVendRecord(string sname, string vname, string scatg, string semail, string saddr, string sstate, string scity, string spno1, string spno2, string avlhrsfrm, string avlhrsto, string vemail, string vaddr, string vstate, string vcity, string vpno1, string vpno2, string uname, string pwd)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("INSERT INTO Shop(ShopName, VendorName, ShopCategory, Email_Id, Address, State, City, ContactOne, ContactTwo, AvailableHoursFrom, AvailableHoursTo, Username, Password) " +
                                                     "VALUES(@sname, @vname, @scatg, @semail, @saddr, @sstate, @scity, @spno1, @spno2, @avlhrsfrm, @avlhrsto, @uname, @pwd)", con))
            {
                cmd.Parameters.AddWithValue("@sname", sname);
                cmd.Parameters.AddWithValue("@vname", vname);
                cmd.Parameters.AddWithValue("@scatg", scatg);
                cmd.Parameters.AddWithValue("@semail", semail);
                cmd.Parameters.AddWithValue("@saddr", saddr);
                cmd.Parameters.AddWithValue("@sstate", sstate);
                cmd.Parameters.AddWithValue("@scity", scity);
                cmd.Parameters.AddWithValue("@spno1", spno1);
                cmd.Parameters.AddWithValue("@spno2", spno2);
                cmd.Parameters.AddWithValue("@avlhrsfrm", avlhrsfrm);
                cmd.Parameters.AddWithValue("@avlhrsto", avlhrsto);
                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@pwd", pwd);
                int result = cmd.ExecuteNonQuery();
            }
            using (SqlCommand cmd1 = new SqlCommand("INSERT INTO Vendors(VendorName, Email_Id, ResdAddr, State, City, ContactOne, ContactTwo) " +
                                                      "VALUES(@vname, @vemail, @vaddr, @vstate, @vcity, @vpno1, @vpno2)", con))
            {
                cmd1.Parameters.AddWithValue("@vname", vname);
                cmd1.Parameters.AddWithValue("@vemail", vemail);
                cmd1.Parameters.AddWithValue("@vaddr", vaddr);
                cmd1.Parameters.AddWithValue("@vstate", vstate);
                cmd1.Parameters.AddWithValue("@vcity", vcity);
                cmd1.Parameters.AddWithValue("@vpno1", vpno1);
                cmd1.Parameters.AddWithValue("@vpno2", vpno2);
                int result1 = cmd1.ExecuteNonQuery();
            }
        }
        return "Records inserted successfully";
    }
}