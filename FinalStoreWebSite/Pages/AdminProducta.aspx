<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminProducta.aspx.cs" Inherits="Pages_AdminProducta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>products:</h1>
    <hr />
    <asp:button runat="server" text="Back" OnClick="Unnamed1_Click" /><br />
    <div>
        <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="products" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" SortExpression="SellingPrice" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="products" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT Products.ProdId, Products.Name, Products.Price, Products.SellingPrice, Products.Description, Products.image, Colors.Name AS Color, Category.Name AS Category, Brands.Name AS Brand
FROM  Products INNER JOIN
         Colors ON Products.ColorId = Colors.ColorId INNER JOIN
         Category ON Products.CategoryId = Category.CategoryId INNER JOIN
         Brands ON Products.BrandId = Brands.BrandId" DeleteCommand="DELETE FROM Products"></asp:SqlDataSource>
    </div>
</asp:Content>

