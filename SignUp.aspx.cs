using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Runtime.Remoting.Contexts;
using System.Configuration;
using System.Web.Services;

public partial class SignUp : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    [WebMethod]
    public static string InsertRecord(string username, string useremail, string useraddr, string userstate, string usercity, string userpno1, string userpno2, string useruname, string userpwd)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("insert into Users(Name, EmailId, Address, State, City, Contact_one, Contact_two, Username, Password) " +
             "values('" + username + "', '" + useremail + "', '" + useraddr + "', '" + userstate + "', '" + usercity + "', '" + userpno1 + "', '" + userpno2 + "', '" + useruname + "', '" + userpwd + "')", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        int result = cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        return result.ToString();

    }
}