using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_AboutAndContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            String EmailBody = "Hi Admin! <br/> "+ txtName.Text + " has sent you a message<br/><br/>";
            EmailBody += "The message Says: "+txtMessage.Text;
            MailMessage PassRecMail = new MailMessage("mailstore326@gmail.com", "mailstore326@gmail.com");
            PassRecMail.Body = EmailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "You got a message Saying: "+txtTitle.Text;

            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.Credentials = new NetworkCredential()
            {
                UserName = "mailstore326@gmail.com",
                Password = "F9ScP!WR"
            };
            SMTP.EnableSsl = true;
            SMTP.Send(PassRecMail);
            lblError.Text = "An email with reset link has been sent to your inbox !";
            lblError.ForeColor = System.Drawing.Color.Green;
        }
        catch
        {
            lblError.Text = "Something Went wrong !";
        }
    }
}