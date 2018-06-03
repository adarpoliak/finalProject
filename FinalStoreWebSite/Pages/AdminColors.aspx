<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminColors.aspx.cs" Inherits="Pages_AdminColors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Colors:</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ColorId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ColorId" HeaderText="ColorId" InsertVisible="False" ReadOnly="True" SortExpression="ColorId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Colors] WHERE [ColorId] = @ColorId" InsertCommand="INSERT INTO [Colors] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [Colors]" UpdateCommand="UPDATE [Colors] SET [Name] = @Name WHERE [ColorId] = @ColorId">
        <DeleteParameters>
            <asp:Parameter Name="ColorId" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ColorId" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

