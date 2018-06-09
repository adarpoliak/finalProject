<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="Pages_CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblPayment" runat="server" Text="You need to pay:"></asp:Label><br />
    <asp:Label ID="lblCredit" runat="server" Text="Enter your credit card number:"></asp:Label><br />
    <asp:TextBox ID="txtCredit" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnPay" runat="server" Text="pay" OnClick="btnPay_Click" /><asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
</asp:Content>

