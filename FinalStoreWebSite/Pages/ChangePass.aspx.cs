using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ChangePass : System.Web.UI.Page
{
    String ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\אדר\\Desktop\\FinalStoreWebSite\\App_Data\\ClientDB.mdf;Integrated Security=True";
    String GuId;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            GuId = Request.QueryString["Uid"];

            if (GuId != null)
            {
                SqlCommand com = new SqlCommand("SELECT * FROM ForgotPasswordReq WHERE Id = @1;", con);
                com.Parameters.AddWithValue("@1", GuId);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(com);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblNewPassword.Visible = true;
                    lblNewPassword.Text = "Your password reset link has expired or invalid !";
                    lblNewPassword.ForeColor = System.Drawing.Color.Red;
                }
                con.Close();
            }
            else
            {
                Response.Redirect("~/HomePage.aspx");
            }
        }
        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                lblNewPassword.Visible = true;
                lblRetypePass.Visible = true;
                txtNewPass.Visible = true;
                txtRetypePass.Visible = true;
                btnResetPass.Visible = true;
            }
            else
            {
                lblNewPassword.Visible = true;
                lblNewPassword.Text = "Your password reset link has expired or invalid !";
                lblNewPassword.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {

        if (txtNewPass.Text != null && txtRetypePass.Text != null)
        {

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand com = new SqlCommand("UPDATE Users SET Upassword = '" + txtNewPass.Text + "' WHERE Id = '" + Uid + "'", con);
                SqlCommand com1 = new SqlCommand("DELETE FROM ForgotPasswordReq WHERE Uid = '" + Uid + "';", con);
                con.Open();
                com.ExecuteNonQuery();
                com1.ExecuteNonQuery();
                con.Close();
            }

            Response.Redirect("~/HomePage.aspx");
        }
    }
}
