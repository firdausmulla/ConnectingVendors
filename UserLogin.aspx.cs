using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Runtime.CompilerServices;
using System.Xml.Linq;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;

public partial class UserLogin : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    [WebMethod]
    public static string LoginRecord(string useruname, string userpwd) 
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("IF EXISTS (SELECT * FROM Users WHERE Username='"+ useruname + "' AND Password= '"+ userpwd + "')", con );
        cmd.CommandType = CommandType.Text;
        con.Open();
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result.ToString();
    }
}