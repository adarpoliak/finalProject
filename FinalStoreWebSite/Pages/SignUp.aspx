<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Pages_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblTitle" runat="server" Text="Register:" Font-Size="X-Large" Font-Underline="true"></asp:Label><hr />
    <div>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label><br />
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name musn't be left empty !" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator><br /><br />

        <asp:Label ID="lblLastName" runat="server" Text="Last name:"></asp:Label><br />
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name musn't be left empty !" ControlToValidate="txtLastName"></asp:RequiredFieldValidator><br /><br />

        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email musn't be left empty !" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br /><br />

        <asp:Label ID="lblPassword" runat="server" Text="Password:" ></asp:Label><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password musn't be left empty !" ControlToValidate="txtPassword"></asp:RequiredFieldValidator><br /><br />

        <asp:Label ID="lblConPassword" runat="server" Text="Repeat your password:"></asp:Label><br />
        <asp:TextBox ID="txtConPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password musn't be left empty !" ControlToValidate="txtConPassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match !" ControlToValidate="txtConPassword" ControlToCompare="txtPassword"></asp:CompareValidator><br /><br />

        <asp:Label ID="Label1" runat="server" Text="Are you a Seller?"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
    </div><!-- Registration div -->
</asp:Content>

