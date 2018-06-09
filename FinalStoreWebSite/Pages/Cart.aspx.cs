using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         //|| Session["User"].ToString() == "Admin"
        if (Session["User"] == null)
        {
            Response.Redirect("http://localhost:51477/Pages/HomePage.aspx");
        }
        else
        {
            TableRow row = null;

            //Add the Headers
            row = new TableRow();
            for (int j = 0; j < (Session["Cart"] as DataTable).Columns.Count; j++)
            {
                TableHeaderCell headerCell = new TableHeaderCell();
                headerCell.Text = (Session["Cart"] as DataTable).Columns[j].ColumnName;
                row.Cells.Add(headerCell);
            }
            TableHeaderCell deleteHeader = new TableHeaderCell();
            deleteHeader.Text = "Remove";
            row.Cells.Add(deleteHeader);
            cartTable.Rows.Add(row);



            //Add the Column values
            int totalPrice = 0;
            for (int i = 0; i < (Session["Cart"] as DataTable).Rows.Count; i++)
            {

                row = new TableRow();

                for (int j = 0; j < (Session["Cart"] as DataTable).Columns.Count; j++)

                {
                    TableCell cell = new TableCell();
                    cell.Text = (Session["Cart"] as DataTable).Rows[i][j].ToString();
                    row.Cells.Add(cell);
                    if (j == (Session["Cart"] as DataTable).Columns.Count - 1)
                    {
                        totalPrice += ((int)((Session["Cart"] as DataTable).Rows[i][1]));
                    }
                }
                TableCell btnCell = new TableCell();
                Button btn = new Button();
                btn.ID = i.ToString();
                btn.BackColor = System.Drawing.Color.Red;
                btn.Click += new EventHandler(this.DeleteFromCart_Click);
                btn.Style.Add("width", "50%");
                btnCell.Controls.Add(btn);
                row.Cells.Add(btnCell);

                // Add the TableRow to the Table
                cartTable.Rows.Add(row);
            }
            totalPriceLab.Text = "Total price: " + totalPrice.ToString() + "  $";
            totalPriceLab.Font.Bold = true;
            totalPriceLab.Font.Size = FontUnit.Large;
            Session["Payment"] = totalPrice;
        }
    }

    private void DeleteFromCart_Click(object sender, EventArgs e)
    {
        Button clickedButton = (Button)sender;
        DataRow deletedRow = (Session["Cart"] as DataTable).Rows[Convert.ToInt32(clickedButton.ID)];
        (Session["Cart"] as DataTable).Rows.Remove(deletedRow);
        //Response.Redirect("http://localhost:62961/cart.aspx");
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51477/Pages/CheckOut.aspx");
    }
}