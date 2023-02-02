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

public partial class SignUp : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public class UserDetails {
        public string fname;
        public string email;
        public string addr;
        public string state;
        public string city;
        public string cnt1;
        public string cnt2;
        public string uname;
        public string upwd;
    }
    public static string InsertRecord(string username, string useremail, string useraddr, string userstate, string usercity, string userpno1, string userpno2, string useruname, string userpwd)
    {
        SqlConnection con = new SqlConnection(connectionstring);
         SqlCommand cmd = new SqlCommand("insert into Users(Name, EmailId, Address, State, City, Contact_one, Contact_two, Username, Password) " +
             "values('"+ username + "', '"+useremail+"', '"+useraddr+"', '"+userstate+"', '"+usercity+"', '"+userpno1+"', '"+userpno2+"', '"+useruname+"', '"+userpwd+"')", con);
        cmd.CommandType = CommandType.Text; 
        con.Open();
        int result = cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        return result.ToString();
        

        /*SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\mulla\\OneDrive\\Documents\\connectingvendors.mdf;Integrated Security=True;Connect Timeout=30");
        string fname, email, addr, uname, upwd;
        fname = Request.Form["fname"];
        email = Request.Form["email"];
        addr = Request.Form["addr"];
        uname = Request.Form["uname"];
        upwd = Request.Form["password"];
        int cnt1, cnt2;
        cnt1 = Convert.ToInt32(Request.Form["num1"]);
        cnt2 = Convert.ToInt32(Request.Form["num2"]);

        SqlCommand cmd = new SqlCommand("insert into Users(Name, Email-Id, Address, Contact_one, Contact_two, Username, Password) " +
            "values('" + fname + "', '" + email + "', '" + addr + "', '" + cnt1 + "', '" + cnt2 + "', '" + uname + "', '" + upwd + "')", con);
        con.Open();
        con.Close();

        Response.Redirect("Website.html"); */

    }
}