using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

public partial class Location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public class Shop
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
    }

    public class ShopList
    {
        public List<Shop> Shop { get; set; }
    }

    public static class DataAccess
    {
        public static ShopList GetShopList()
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            string query = "SELECT ShopName, Address FROM Shop";
            ShopList shopList = new ShopList();

            using (SqlConnection connection = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        shopList.Shop = new List<Shop>();

                        while (reader.Read())
                        {
                            Shop shop = new Shop();
                            shop.Name = reader.GetString(0);
                            shop.Address = reader.GetString(1);
                            shopList.Shop.Add(shop);
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exception
                }
            }

            return shopList;
        }
    }

}