using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminUser : System.Web.UI.Page
{
    private static string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*protected void ShowUsers_Click(object sender, EventArgs e)
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionstring))
        {
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Users", connection);
            SqlDataReader reader = command.ExecuteReader();

            // Create the table headers
            TableHeaderRow headerRow = new TableHeaderRow();
            headerRow.Cells.Add(new TableHeaderCell { Text = "ID" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Name" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Email Id" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Address" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "State" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "City" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Contact No.1" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Contact No.2" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Username" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Password" });
            TableUsers.Rows.Add(headerRow);

            // Create a table row for each vendor
            while (reader.Read())
            {
                TableRow row = new TableRow();
                row.Cells.Add(new TableCell { Text = reader["UID"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Name"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["EmailId"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Address"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["State"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["City"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Contact_one"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Contact_two"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Username"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["Password"].ToString() });
                TableUsers.Rows.Add(row);
            }
            reader.Close();
        }
    }*/
    protected void ShowUsers_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlDataAdapter da = new SqlDataAdapter("select * from Users", con);
        DataSet ds = new DataSet();
        da.Fill(ds, " Users ");
        GridUsers.DataSource= ds.Tables[" Users "];
        GridUsers.DataBind();
    }

    protected void UpdUser_Click(object sender, EventArgs e)
    {
        updateForm.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        updateForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        string uname, ueid, uaddr, ustate, ucity, ucnt1, ucnt2, uuname;
        int uid;
        uid = Convert.ToInt32(txtuid.Text);
        uname = txtupuname.Text;
        ueid = txteid.Text;
        uaddr = txtaddr.Text;
        ustate = txtstate.Text;
        ucity = txtcity.Text;
        ucnt1 = txtcnt1.Text;
        ucnt2 = txtcnt2.Text;
        uuname = txtuuname.Text;
        SqlCommand cmd = new SqlCommand("update Users set Name ='" + uname + "',EmailId='" + ueid + "',Address='" + uaddr + "',State='" + ustate + "',City='" + ucity + "',Contact_one='" + ucnt1 + "',Contact_two='" + ucnt2 + "', Username='" + uuname + "'where UID=" + uid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "User Updated Successfully";
        else
            MsgLbl.Text = "User not Updated";
        con.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtuid.Text = "";
        txtupuname.Text = "";
        txteid.Text = "";
        txtaddr.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtcnt1.Text = "";
        txtcnt2.Text = "";
        txtuuname.Text = "";
        updateForm.Visible = false;
    }

    protected void DelUser_Click(object sender, EventArgs e)
    {
        delForm.Visible = true;
    }

    protected void btnSavedel_Click(object sender, EventArgs e)
    {
        delForm.Visible = false;
        SqlConnection con = new SqlConnection(connectionstring);
        int uid;
        uid = Convert.ToInt32(txtdel.Text);
        SqlCommand cmd = new SqlCommand("delete from Users where UID= " + uid, con);
        con.Open();
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
            MsgLbl.Text = "User Deleted Successfully";
        else
            MsgLbl.Text = "User not Deleted";
        con.Close();
    }

    protected void btnCanceldel_Click(object sender, EventArgs e)
    {
        txtdel.Text = "";
        delForm.Visible = false;

    }

}