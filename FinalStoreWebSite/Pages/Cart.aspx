<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Pages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Table ID="cartTable" runat="server" BorderStyle="Solid" GridLines="Both"></asp:Table><br /><br />
    <asp:Label ID="totalPriceLab" runat="server" Text=""></asp:Label><br /><br />
    <asp:Button ID="btnCheckOut" runat="server" Text="Proceed to checkout !" OnClick="btnCheckOut_Click" />
</asp:Content>

