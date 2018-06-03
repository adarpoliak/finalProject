using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string c = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\אדר\\Desktop\\FinalStoreWebSite\\App_Data\\ClientDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE Email = @1 AND Password = @2;", con);
        cmd.Parameters.AddWithValue("@1", txtEmail.Text);
        cmd.Parameters.AddWithValue("@2", txtPassword.Text);
        DataTable dt = new DataTable();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();

        if(dt.Rows.Count != 0 && !(bool)dt.Rows[0][5])
        {
            //if he is admin
            if ((bool)dt.Rows[0][5])
            {
                Session["User"] = "Admin";
            }
            else
            {
                Session["User"] = dt.Rows[0][1];
                if ((bool)dt.Rows[0][6])
                {
                    Session["Seller"] = "Seller";
                }
            }

            Response.Redirect("http://localhost:51477/Pages/HomePage.aspx");
        }


        else
        {
            lblTitle.Text = "Sign In: (UserName or Password are wrong !)";
        }

    }
}