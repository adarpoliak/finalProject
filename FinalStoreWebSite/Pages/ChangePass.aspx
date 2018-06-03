<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="Pages_ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h2>Reset your password</h2>
        <hr />
        <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" Visible="False"></asp:Label>
        <br />
        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password musn't be left empty!" ControlToValidate="txtNewPass" Visible="False"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblRetypePass" runat="server" Text="Re-type Password:" Visible="False"></asp:Label>
        <br />
        <asp:TextBox ID="txtRetypePass" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password musn't be left empty!" ControlToValidate="txtReytpePass" Visible="False"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match!" ControlToValidate="txtNewPass" ControlToCompare="txtRetypePass" Visible="False"></asp:CompareValidator>
        <br />
        <asp:Button ID="btnResetPass" runat="server" Text="Reset" UseSubmitBehavior="false"  Visible="False" OnClick="btnResetPass_Click" />
    </div>
</asp:Content>

