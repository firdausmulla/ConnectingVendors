using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load data and bind it to the controls on the page
            LoadData();
        }
        
    }

    protected void LoadData()
    {
        // Load data from the database or other source and bind it to the controls on the page
        // For example, you could load the number of vendors, users, and shops and display them in the boxes on the dashboard
        int totalVendors = GetTotalVendors();
        int totalUsers = GetTotalUsers();
        int totalShops = GetTotalShops();

        string recentUser = GetRecentUser();
        string recentShop = GetRecentShop();
        string recentVend = GetRecentVend();
        ;
        lblTotalVendors.Text = totalVendors.ToString();
        lblTotalUsers.Text = totalUsers.ToString();
        lblTotalShops.Text = totalShops.ToString();

        addUser.Text = recentUser;
        addShop.Text = recentShop;
        addVends.Text = recentVend;


        string query = "SELECT ShopCategory, COUNT(*) AS Count FROM Shop GROUP BY ShopCategory";

        // Create a SqlConnection object and open the connection
        using (SqlConnection connection = new SqlConnection(connectionstring))
        {
            connection.Open();

            // Create a SqlCommand object and set the query and connection
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Create a SqlDataReader object to read the data returned by the query
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // Create a List to hold the formatted data
                    List<string[]> data = new List<string[]>();

                    // Loop through the rows returned by the query and format the data
                    while (reader.Read())
                    {
                        string[] row = new string[2];
                        row[0] = reader.GetString(0); // category
                        row[1] = reader.GetInt32(1).ToString(); // count
                        data.Add(row);
                    }

                    // Serialize the formatted data as JSON and send it to the browser
                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    string jsonData = serializer.Serialize(data);
                    hdnChartData.Value = jsonData;
                }
            }
        }

    }

    protected int GetTotalVendors()
    {
        // Code to get the total number of vendors from the database or other source
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("select count(VendID) from Vendors", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        int totalVendors = (int)cmd.ExecuteScalar();
        cmd.Dispose();
        con.Close();
        return totalVendors;
    }

    protected int GetTotalUsers()
    {
        // Code to get the total number of users from the database or other source
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("select count(UID) from Users", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        int totalUsers = (int)cmd.ExecuteScalar();
        cmd.Dispose();
        con.Close();
        return totalUsers;
    }

    protected int GetTotalShops()
    {
        // Code to get the total number of shops from the database or other source
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("select count(ShopID) from Shop", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        int totalShops = (int)cmd.ExecuteScalar();
        cmd.Dispose();
        con.Close();
        return totalShops;
    }

    protected string GetRecentUser() {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            SqlCommand cmd = new SqlCommand("SELECT Top 3 Name FROM Users ORDER BY UID DESC", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string recentUser = "";
            while (reader.Read())
            {
                recentUser += reader["Name"].ToString() + "<br>";
            }
            // Remove the last comma and space
            recentUser = recentUser.TrimEnd(',', ' ');
            cmd.Dispose();
            con.Close();
            return recentUser;
        }
    }

    protected string GetRecentShop()
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            SqlCommand cmd = new SqlCommand("SELECT Top 3 ShopName FROM Shop ORDER BY ShopID DESC", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string recentShop = "";
            while (reader.Read())
            {
                recentShop += reader["ShopName"].ToString()+ "<br>";
            }
            // Remove the last comma and space
            recentShop = recentShop.TrimEnd(',', ' ');
            cmd.Dispose();
            con.Close();
            return recentShop;
        }
    }

    protected string GetRecentVend()
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            SqlCommand cmd = new SqlCommand("SELECT Top 3 VendorName FROM Vendors ORDER BY VendID DESC", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string recentVend = "";
            while (reader.Read())
            {
                recentVend += reader["VendorName"].ToString() + "<br>";
            }
            // Remove the last comma and space
            recentVend = recentVend.TrimEnd(',', ' ');
            cmd.Dispose();
            con.Close();
            return recentVend;
        }
    }
    
}