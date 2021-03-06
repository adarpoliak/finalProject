﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Pages_SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Sign In</h1>
        <asp:Label ID="lblTitle" runat="server" Font-Underline="true" Font-Size="X-Large" Text=""></asp:Label><hr />
    <div class="container">
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
        <asp:TextBox ID="txtEmail" placeholder="Email..." runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email musn't be left empty !" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
        <br />

        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label><br />
        <asp:TextBox ID="txtPassword" placeholder="Password..." runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password musn't be left empty !" ControlToValidate="txtPassword"></asp:RequiredFieldValidator><br />
        <br />

        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        <a href="ForgotPassword.aspx">Forgot Password?</a>
    </div>
</asp:Content>

