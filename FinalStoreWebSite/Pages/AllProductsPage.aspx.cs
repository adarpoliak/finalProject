using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using localhost;
using System.Data;

public partial class Pages_AllProductsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindRepeaterData();
        if(Request.QueryString["PB"] == "t")
        {
            Response.Write("Product Added To Cart !");
        }
    }

    private void BindRepeaterData()
    {
        WebService ws = new WebService();
        DataTable dt = ws.GetAllProducts();
        rptrProduct.DataSource = dt;
        rptrProduct.DataBind();
    }
}