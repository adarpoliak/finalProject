using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    String c = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\אדר\\Desktop\\WebService\\App_Data\\Database.mdf;Integrated Security=True";
    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable GetColors()
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Colors",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable da = new DataTable();
            da.TableName = "Colors";
            sda.Fill(da);
            return da;
        }
    }

    [WebMethod]
    public DataTable GetBrands()
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Brands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable da = new DataTable();
            da.TableName = "Brands";
            sda.Fill(da);
            return da;
        }
    }

    [WebMethod]
    public DataTable GetCategorys()
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable da = new DataTable();
            da.TableName = "Categorys";
            sda.Fill(da);
            return da;
        }
    }

    [WebMethod]
    public void InsertProduct(string name, int price, int custPrice, long brandID, long colorId, long categoryId, string description , string image)
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Products (Name, Price, SellingPrice, BrandId, ColorId, CategoryId, Description, image) VALUES (@1, @2, @3, @4, @5, @6, @7, @8);", con);
            cmd.Parameters.AddWithValue("@1", name);
            cmd.Parameters.AddWithValue("@2", price);
            cmd.Parameters.AddWithValue("@3", custPrice);
            cmd.Parameters.AddWithValue("@4", brandID);
            cmd.Parameters.AddWithValue("@5", colorId);
            cmd.Parameters.AddWithValue("@6", categoryId);
            cmd.Parameters.AddWithValue("@7", description);
            cmd.Parameters.AddWithValue("@8", image);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    [WebMethod]
    public void InsertBrand(string brand)
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Brands (Name) VALUES @1;", con);
            cmd.Parameters.AddWithValue("@1", brand);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    [WebMethod]
    public void InsertColor(string color)
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Colors (Name) VALUES(@1);", con);
            cmd.Parameters.AddWithValue("@1", color);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    [WebMethod]
    public void InsertCategory(string category)
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Category (Name) VALUES @1;", con);
            cmd.Parameters.AddWithValue("@1", category);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    [WebMethod]
    public DataTable GetAllProducts()
    {
        using (SqlConnection con = new SqlConnection(c))
        {
            SqlCommand cmd = 
            new SqlCommand("SELECT Products.Name, Products.Price, Products.SellingPrice, Brands.Name AS Brand, Colors.Name AS Color, Category.Name AS Category, Products.Description, Products.image FROM Products "
            +"INNER JOIN Brands ON Products.BrandId = Brands.BrandId INNER JOIN Colors ON Products.ColorId = Colors.ColorId INNER JOIN Category ON Products.CategoryId = Category.CategoryId;",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dt.TableName = "Product";
            return dt;
        }
    }


}
