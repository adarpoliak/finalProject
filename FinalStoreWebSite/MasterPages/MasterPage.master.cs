using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            hlUser.Text = Session["User"].ToString();
            hlUser.Visible = true;
            hlSignUp.Visible = false;
            hlSignIn.Visible = false;
            if (Session["Seller"] != null)
            {
                hlAddProd.Visible = true;
            }
            if (Session["User"].ToString() == "Admin")
            {
                hlAdmin.Visible = true;
                hlAddProd.Visible = true;
            }
        }
        else
        {
            hlUser.Visible = false;
            hlSignUp.Visible = true;
            hlSignIn.Visible = true;
            hlAdmin.Visible = false;
            hlAddProd.Visible = false;


        }
    }
}
