<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="Pages_AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Admin Page:</h1>
    <hr />
    <ul class="admin-nav">
        <li class="admin-content"><a href="AdminBrands.aspx">See and edit Brands</a></li>
        <li class="admin-content"><a href="AdminCategory.aspx">See and edit Categorys</a></li>
        <li class="admin-content"><a href="AdminColors.aspx">See and edit Colors</a></li>
        <li class="admin-content"><a href="AdminPassChange.aspx">See Users Password change log </a></li>
        <li class="admin-content"><a href="AdminProducta.aspx">See and edit products</a></li>
        <li class="admin-content"><a href="AdminUser.aspx">See and edit Users</a></li>
    </ul>
</asp:Content>

