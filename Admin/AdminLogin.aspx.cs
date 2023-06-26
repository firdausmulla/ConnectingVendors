using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static int Login(string username, string password)
    {
        int result = 0;
        // Check if the credentials are correct
        if (username == "admin" && password == "admin123")
        {
            result = 1; // Authentication successful
        }
        else
        {
            result = -1;
        }
        return result;
    }
}