<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Pages_ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1>Forgot Password?</h1>
        <hr />
        <h2>reset your pssword by entering the email address of your user and a password reser link will be sent to you</h2>
        <div class="container">
            <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="Email..." runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You musn't leave email address empty!" ControlToValidate="txtEmail" Font-Bold="True"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" UseSubmitBehavior="false" />
        <asp:Label ID="lblPass" runat="server"></asp:Label>
    </div>

</asp:Content>

