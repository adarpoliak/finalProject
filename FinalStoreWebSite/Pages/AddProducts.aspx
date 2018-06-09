<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Pages_AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Label ID="lblTitle" Font-Size="X-Large" Font-Underline="true" runat="server" Text="Add Product:"></asp:Label>
        <hr />
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="txtName"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="txtPrice"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Selling Price:"></asp:Label>
        <asp:TextBox ID="txtSellingPrice" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="txtSellingPrice"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Brands:"></asp:Label>
        <asp:DropDownList ID="ddlBrands" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Category:"></asp:Label>
        <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Color:"></asp:Label>
        <asp:DropDownList ID="ddlColor" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="ddlColor" InitialValue="0"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Description:"></asp:Label>
        <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="txtDesc"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Image:"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="this field musn't be left empty !" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <br />
        <a href="AddBrand.aspx">cant find a brand?</a><br />
        <a href="AddCategory.aspx">cant find a category?</a><br />
        <a href="AddColor.aspx">cant find a color?</a><br />
    </div>
</asp:Content>

