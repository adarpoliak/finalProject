using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPay_Click(object sender, EventArgs e)
    {
        if (txtCredit.Text.Length < 16 || txtCredit.Text.Length > 16)
        {
            lblErr.Text = "Credit card number is invalid !";
            lblErr.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            //send mail
            String UserName = Session["User"].ToString();
            MailMessage mailMsg = new MailMessage("mailstore326@gmail.com", Session["Email"].ToString());
            mailMsg.Body = "";
            for (int i = 0; i < (Session["Cart"] as DataTable).Rows.Count; i++)
            {
                for (int j = 0; j < (Session["Cart"] as DataTable).Columns.Count; j++)

                {
                    mailMsg.Body += (Session["Cart"] as DataTable).Columns[j].ColumnName + ":    " + (Session["Cart"] as DataTable).Rows[i][j].ToString();
                }
                mailMsg.Body += "<br/><br/>";
            }
            mailMsg.Body += "Total price:  " + Session["Payment"].ToString();

            mailMsg.IsBodyHtml = true;
            mailMsg.Subject = "Recipt";

            SmtpClient SMTP = new SmtpClient();
            SMTP.Host = "smtp.gmail.com";
            SMTP.EnableSsl = true;
            SMTP.Credentials = new System.Net.NetworkCredential("mailstore326@gmail.com", "F9ScP!WR");
            SMTP.Send(mailMsg);
            lblErr.Text = "A Recipt has been sent to your inbox !";
            lblErr.ForeColor = System.Drawing.Color.Green;

            Session["Cart"] = null;
            Session["Cart"] = new DataTable();
            (Session["Cart"] as DataTable).Columns.Add("Name", typeof(string));
            (Session["Cart"] as DataTable).Columns.Add("Price", typeof(int));
            (Session["Cart"] as DataTable).Columns.Add("Color", typeof(string));
            (Session["Cart"] as DataTable).Columns.Add("Brand", typeof(string));
        }
    }
   
}
