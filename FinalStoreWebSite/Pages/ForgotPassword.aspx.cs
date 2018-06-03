using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\אדר\\Desktop\\FinalStoreWebSite\\App_Data\\ClientDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE Email = @1 AND Password = @2;", con);
        cmd.Parameters.AddWithValue("@1", txtEmail.Text);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            String myGuID = Guid.NewGuid().ToString();
            int Uid = Convert.ToInt32(dt.Rows[0][0]);
            SqlCommand cmd1 = new SqlCommand("INSERT INTO ForgotPasswordReq VALUES (@1, @2, getdate())", con);
            cmd1.Parameters.AddWithValue("@1", myGuID);
            cmd1.Parameters.AddWithValue("@2", Uid);
            cmd1.ExecuteNonQuery();

            //send mail
            String UserName = dt.Rows[0][1].ToString();
            String EmailBody = "Hi" + UserName + ",<br/><br/> click on the following link to reset your password <br/> http://localhost:51477/Pages/ChangePass.aspx?Uid=" + myGuID;
            MailMessage PassRecMail = new MailMessage("OnlineStore@gmail.com", txtEmail.Text);
            PassRecMail.Body = EmailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "Reset Password";

            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.Credentials = new NetworkCredential()
            {
                UserName = "OnlineStore@gmail.com",
                Password = "OnlineStore"
            };
            SMTP.EnableSsl = true;
            SMTP.Send(PassRecMail);
            lblPass.Text = "An email with reset link has been sent to your inbox !";
            lblPass.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            lblPass.Text = "Oops the email you've entered does not exsit !";
            lblPass.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
}