using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Pages_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlSeller.Items.Add(new ListItem("not a seller"));
        ddlSeller.Items.Add(new ListItem("I`m a seller"));
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        int seller = 0;
        if (ddlSeller.SelectedItem.Text == "I`m a seller")
        {
            seller = 1;
        }

        try
        {
            string c = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\אדר\\Desktop\\FinalStoreWebSite\\App_Data\\ClientDB.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(c);
            SqlCommand cmd = new SqlCommand("INSERT INTO Users VALUES(@1, @2, @3, @4, 0, @5);", con);
            cmd.Parameters.AddWithValue("@1", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@2", txtLastName.Text);
            cmd.Parameters.AddWithValue("@3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@4", txtPassword.Text);
            cmd.Parameters.AddWithValue("@5", seller);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("http://localhost:51477/Pages/SignIn.aspx");
        }
        catch
        {
            lblTitle.Text = "(Something went wrong, try again later)";
        }
    }
}