using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class VendorsPage : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlDataAdapter da = new SqlDataAdapter("select ShopName, VendorName, ShopCategory, Address, Contact1, Contact2, OpentTime, CloseTime from Shop", con);
        DataSet ds = new DataSet();
        GridShops.DataSource = ds.Tables[" Shop "];

        SqlDataAdapter da1 = new SqlDataAdapter("select ShopName, ItemName, ItemQuantity, Price from ShopItems", con);
        DataSet ds1 = new DataSet();
        GridShopItems.DataSource = ds1.Tables[" ShopItems "];

    }
}