<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AllProductsPage.aspx.cs" Inherits="Pages_AllProductsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:repeater id="rptrProduct" runat="server">
        <ItemTemplate>
            <asp:HyperLink runat="server">
                <div class="product">
                <img src='<%Server.MapPath("FinalStoreWebSite"); %>/<%#Eval("image") %>' />
                <div>
                    <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label><br />
                    price:<asp:Label ID="lblPrice" runat="server" Text='<%#Eval("SellingPrice") %>' ></asp:Label>$
                </div>
            </div>
            </asp:HyperLink>
        </ItemTemplate>
    </asp:repeater>

</asp:Content>

