using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static int LoginRecord(string useruname, string userpwd)
    {
        int result = 0;

        try
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Shop WHERE Username=@Username AND Password=@Password", con))
                {
                    cmd.Parameters.AddWithValue("@Username", useruname);
                    cmd.Parameters.AddWithValue("@Password", userpwd);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        result = 1; // Authentication successful
                    }

                    con.Close();
                }
            }
        }
        catch (Exception ex)
        {
            result = -1;// Handle exception here
        }

        return result;
    }
}