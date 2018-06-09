<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminBrands.aspx.cs" Inherits="Pages_AdminBrands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Brands:</h1>
    <hr />
    <asp:button runat="server" text="Back" OnClick="Unnamed1_Click" /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BrandId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BrandId" HeaderText="BrandId" InsertVisible="False" ReadOnly="True" SortExpression="BrandId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Brands] WHERE [BrandId] = @BrandId" InsertCommand="INSERT INTO [Brands] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [Brands]" UpdateCommand="UPDATE [Brands] SET [Name] = @Name WHERE [BrandId] = @BrandId">
        <DeleteParameters>
            <asp:Parameter Name="BrandId" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="BrandId" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

