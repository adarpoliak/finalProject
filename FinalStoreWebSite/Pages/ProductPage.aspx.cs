using localhost;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ProductPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["PId"] != null)
        {
            BindRepeaterData();
        }
        else
        {
            Response.Redirect("http://localhost:51477/Pages/AllProductsPage.aspx");
        }
    }

    private void BindRepeaterData()
    {
        WebService ws = new WebService();
        DataTable dt = ws.GetProdById(int.Parse(Request.QueryString["PId"]));
        rptrProduct.DataSource = dt;
        rptrProduct.DataBind();
    }
}