using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using localhost;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Pages_AddProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebService ws = new WebService();
        DataTable colors = ws.GetColors(), brands = ws.GetBrands(), category = ws.GetCategorys();
        if (!IsPostBack)
        {
            ddlBrands.DataSource = brands;
            ddlBrands.DataTextField = "Name";
            ddlBrands.DataValueField = "BrandId";
            ddlBrands.DataBind();
            ddlCategory.DataSource = category;
            ddlCategory.DataTextField = "Name";
            ddlCategory.DataValueField = "CategoryId";
            ddlCategory.DataBind();
            ddlColor.DataSource = colors;
            ddlColor.DataTextField = "Name";
            ddlColor.DataValueField = "ColorId";
            ddlColor.DataBind();
            ddlColor.Items.Insert(0, new ListItem("-Select-", "0"));
            ddlBrands.Items.Insert(0, new ListItem("-Select-", "0"));
            ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string name = txtName.Text, description = txtDesc.Text, image = "";
            long brand = int.Parse(ddlBrands.SelectedValue), color = int.Parse(ddlColor.SelectedItem.Value), category = int.Parse(ddlCategory.SelectedValue);
            int price = int.Parse(txtPrice.Text), custPrice = int.Parse(txtSellingPrice.Text);

            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string path = Server.MapPath("~/images/") + fileName;
            FileUpload1.PostedFile.SaveAs(path);
            image = "images/" + fileName;

            WebService ws = new WebService();
            ws.InsertProduct(name, price, custPrice, brand, color, category, description, image);

            lblTitle.Text = "Add Product: (Product added successfully !)";
            ClearPage();
        }
        catch
        {
            lblTitle.Text = "Add Product: (Something went wrong !)";
        }

    }

    public void ClearPage()
    {
        txtDesc.Text = "";
        txtName.Text = "";
        txtPrice.Text = "";
        txtSellingPrice.Text = "";
        ddlBrands.SelectedIndex = 0;
        ddlCategory.SelectedIndex = 0;
        ddlColor.SelectedIndex = 0;
        FileUpload1.Dispose();

    }
}