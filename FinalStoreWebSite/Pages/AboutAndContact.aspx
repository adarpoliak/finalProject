<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AboutAndContact.aspx.cs" Inherits="Pages_AboutAndContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>About Us</h1>
    <hr />
    <div style="text-align:;">
        <h2>about adar</h2>
        <p>
            adar is just a high-school student who built this site for a project. Everything<br />
             about this site was built and designed by him and he should get all the credit
            <br />
             for it. If I were to give him the grade, it would be 100% for sure! 
        </p>
        <h2>about the site</h2>
        <p>
            the site is a stor for shopping carts. that is hia whole purpose.<br />
            you shouldn`t give it any more meaning' because there is none.
        </p>
    </div>
    <div class="container">
        <h2>Contact Us</h2>
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label><br />
        <a name="contact"></a>
        <asp:Label ID="lblName" runat="server" Text="your name:"></asp:Label><asp:TextBox ID="txtName" placeholder="Your name..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field musn`t be left empty !" ControlToValidate="txtName"></asp:RequiredFieldValidator><br />
        <asp:Label ID="lblTitle" runat="server" Text="Mesasage title:"></asp:Label><asp:TextBox ID="txtTitle" placeholder="Message Title..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field musn`t be left empty !" ControlToValidate="txtTitle"></asp:RequiredFieldValidator><br />
        <asp:Label ID="lblMessage" runat="server" Text="Mesasage Body:"></asp:Label><asp:TextBox ID="txtMessage" TextMode="MultiLine" placeholder="Body of the message..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field musn`t be left empty !" ControlToValidate="txtMessage"></asp:RequiredFieldValidator><br />
        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
    </div>
</asp:Content>

