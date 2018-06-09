<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ProductPage.aspx.cs" Inherits="Pages_ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater ID="rptrProduct" runat="server" OnItemCommand="rptrProduct_ItemCommand">
        <ItemTemplate>
            <div style="display: inline;">
                <div style="display: inline-block;">
                     <img style="height:50vh" src='<%Server.MapPath("FinalStoreWebSite"); %>/<%#Eval("image") %>' />
                </div>
                <div style="display: inline-block;">
                    <div style="display: block;">
                        <asp:Label ID="lblTitle" Font-Size="X-Large" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                        <br />
                        <br />
                        Price:<asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>$
                        Category:<asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                    </div>
                    <hr />
                    <div>
                        <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" runat="server" UseSubmitBehavior="false" Text="Add Cart to Cart!" />
                    </div>
                    <hr />
                    <div>
                        <asp:Label ID="lblDesc" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                    </div>
                </div>
            </div>
        </ItemTemplate>

    </asp:Repeater>

</asp:Content>

