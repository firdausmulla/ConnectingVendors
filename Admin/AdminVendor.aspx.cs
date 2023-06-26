using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminVendor : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ShowVendors_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlDataAdapter da = new SqlDataAdapter("select * from Vendors", con);
        DataSet ds = new DataSet();
        da.Fill(ds, " Vendors ");
        GridVend.DataSource = ds.Tables[" Vendors "];
        GridVend.DataBind();
    }

    protected void UpdVend_Click(object sender, EventArgs e)
    {
        updateForm.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        updateForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        string vname, sname, veid, vcnt1, vcnt2;
        int vid;
        vid = Convert.ToInt32(txtvid.Text);
        vname = txtupvname.Text;
        sname = txtupsname.Text;
        veid = txteid.Text;
        vcnt1 = txtcnt1.Text;
        vcnt2 = txtcnt2.Text;
        SqlCommand cmd = new SqlCommand("update Vendors set VendorName ='" + vname + "',ShopName='" + sname + "',Email_Id='" + veid + "',Contact1='" + vcnt1 + "',Contact2='" + vcnt2 + "'where VendID=" + vid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Vendor Updated Successfully";
        else
            MsgLbl.Text = "Vendor not Updated";
        con.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtvid.Text = "";
        txtupvname.Text = "";
        txtupsname.Text = "";
        txteid.Text = "";
        txtcnt1.Text = "";
        txtcnt2.Text = "";
        updateForm.Visible = false;
    }

    protected void DelVend_Click(object sender, EventArgs e)
    {
        delForm.Visible = true;
    }

    protected void btnSavedel_Click(object sender, EventArgs e)
    {
        delForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        int vid;
        vid = Convert.ToInt32(txtdel.Text);
        SqlCommand cmd = new SqlCommand("delete from Vendors where VendID= " + vid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Vendor Deleted Successfully";
        else
            MsgLbl.Text = "Vendor not Deleted";
        con.Close();
    }

    protected void btnCanceldel_Click(object sender, EventArgs e)
    {
        txtdel.Text = "";
        delForm.Visible = false;

    }
}
