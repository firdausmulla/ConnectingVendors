using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorsHandle : System.Web.UI.Page
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

    protected void LoadData() {
        string vendname = Request.QueryString["vendname"];
        lblvendname.Text = vendname;
        string VendUname = Request.QueryString["VendUname"];
        lblvendname.Text = VendUname;
    }

    protected void AddInv_Click(object sender, EventArgs e)
    {
        addForm.Visible = true;
        updateForm.Visible = false;
        delForm.Visible = false;

    }

    protected void btnSavead_Click(object sender, EventArgs e)
    {
        addForm.Visible = true;
        SqlConnection con = new SqlConnection(connectionstring);
        string sname, itmname;
        int itmqnt;
        sname = txtaddsname.Text;
        itmname = txtadditname.Text;
        itmqnt = Convert.ToInt32(txtitmqnt.Text);
        decimal price = Convert.ToDecimal(txtaddprice.Text);
        SqlCommand cmd = new SqlCommand("INSERT INTO ShopItems (ShopName, ItemName, ItemQuantity, Price) VALUES (@ShopName, @ItemName, @ItemQuantity, @Price)", con);
        cmd.Parameters.AddWithValue("@ShopName", sname);
        cmd.Parameters.AddWithValue("@ItemName", itmname);
        cmd.Parameters.AddWithValue("@ItemQuantity", itmqnt);
        cmd.Parameters.AddWithValue("@Price", price);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Inventory Added Successfully";
        else
            MsgLbl.Text = "Inventory not Added";
        con.Close();
    }

    protected void btnCancelad_Click(object sender, EventArgs e)
    {
        txtaddsname.Text = "";
        txtadditname.Text = "";
        txtitmqnt.Text = "";
        txtaddprice.Text = "";
        addForm.Visible = false;
    }

    protected void UpdInv_Click(object sender, EventArgs e)
    {
        addForm.Visible = false;
        updateForm.Visible = true;
        delForm.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        updateForm.Visible = true;
        SqlConnection con = new SqlConnection(connectionstring);
        string sname, itmname; 
        int itmqnt;
        sname = txtupsname.Text;
        itmname = txtupitname.Text;
        itmqnt = Convert.ToInt32(txtqnt.Text);
        decimal price = Convert.ToDecimal(txtprice.Text);
        SqlCommand cmd = new SqlCommand("UPDATE ShopItems SET ItemName = @ItemName, ItemQuantity = @ItemQuantity, Price = @Price WHERE ShopName = @ShopName", con);
        cmd.Parameters.AddWithValue("@ItemName", itmname);
        cmd.Parameters.AddWithValue("@ItemQuantity", itmqnt);
        cmd.Parameters.AddWithValue("@Price", price);
        cmd.Parameters.AddWithValue("@ShopName", sname);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Inventory Updated Successfully";
        else
            MsgLbl.Text = "Inventory not Updated";
        con.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtupsname.Text = "";
        txtupitname.Text = "";
        txtqnt.Text = "";
        txtprice.Text = "";
        updateForm.Visible = false;
    }

    protected void DelInv_Click(object sender, EventArgs e)
    {
        addForm.Visible = false;
        updateForm.Visible = false;
        delForm.Visible = true;
    }

    protected void btnSavedel_Click(object sender, EventArgs e)
    {
        delForm.Visible = true;
        SqlConnection con = new SqlConnection(connectionstring);
        string sname;
        sname = txtdelsname.Text;
        SqlCommand cmd = new SqlCommand("UPDATE ShopItems SET ItemName = NULL WHERE ShopName = @ShopName", con);
        cmd.Parameters.AddWithValue("@ShopName", sname);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Item Deleted Successfully";
        else
            MsgLbl.Text = "Item not Deleted";
        con.Close();
    }

    protected void btnCanceldel_Click(object sender, EventArgs e)
    {
        txtdelsname.Text = "";
        txtdelitname.Text = "";
        delForm.Visible = false;

    }
}