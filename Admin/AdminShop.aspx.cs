using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminShop : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ShowShops_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlDataAdapter da = new SqlDataAdapter("select * from Shop", con);
        DataSet ds = new DataSet();
        da.Fill(ds, " Shop ");
        GridShops.DataSource = ds.Tables[" Shop "];
        GridShops.DataBind();
    }

    protected void UpdVend_Click(object sender, EventArgs e)
    {
        updateForm.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        updateForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        string sname, vname, scatg, seid, saddr, sstate, scity, scnt1, scnt2, sfrm, sto, suname;
        int sid;
        sid = Convert.ToInt32(txtsid.Text);
        sname = txtupsname.Text;
        vname = txtvname.Text;
        scatg = txtscatg.Text;
        seid = txteid.Text;
        saddr = txtaddr.Text;
        sstate = txtstate.Text;
        scity = txtcity.Text;
        scnt1 = txtcnt1.Text;
        scnt2 = txtcnt2.Text;
        sfrm = txtfrm.Text;
        sto = txtto.Text;
        suname = txtsuname.Text;
        SqlCommand cmd = new SqlCommand("update Shop set Shopname ='" + sname + "',VendorName='" + vname + "',ShopCategory='" + scatg + "',Email_Id='" + seid + "',Address='" + saddr + "',State='" + sstate + "',City='" + scity + "',Contact1='" + scnt1 + "',Contact2='" + scnt2 + "',OpenTime='" + sfrm + "',CloseTime='" + sto + "',Username='" + suname + "'where ShopID=" + sid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Shop Updated Successfully";
        else
            MsgLbl.Text = "Shop not Updated";
        con.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtupsname.Text = "";
        txtvname.Text = "";
        txtscatg.Text = "";
        txteid.Text = "";
        txtaddr.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtcnt1.Text = "";
        txtcnt2.Text = "";
        txtfrm.Text = "";
        txtto.Text = "";
        txtsuname.Text = "";
        updateForm.Visible = false;
    }

    protected void DelShop_Click(object sender, EventArgs e) 
    {
        delForm.Visible = true;
    }

    protected void btnSavedel_Click(object sender, EventArgs e)
    {
        delForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        int sid;
        sid = Convert.ToInt32(txtdel.Text);
        SqlCommand cmd = new SqlCommand("delete from Shop where ShopID= " + sid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "Shop Deleted Successfully";
        else
            MsgLbl.Text = "Shop not Deleted";
        con.Close();
    }

    protected void btnCanceldel_Click(object sender, EventArgs e)
    {
        txtdel.Text = "";
        delForm.Visible = false;
        
    }
}