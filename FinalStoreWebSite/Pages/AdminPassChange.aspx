<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPassChange.aspx.cs" Inherits="Pages_AdminPassChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
        <h1>Password Change Log:</h1><hr />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ClientSideDB">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                <asp:BoundField DataField="Requestdatetime" HeaderText="Requestdatetime" SortExpression="Requestdatetime" />
            </Columns>
        </asp:GridView><br />
    </div>

</asp:Content>

