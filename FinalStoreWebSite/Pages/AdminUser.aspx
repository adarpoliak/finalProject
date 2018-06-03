<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminUser.aspx.cs" Inherits="Pages_AdminUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1>Users:</h1>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ClientSideDB">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ClientSideDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ForgotPasswordReq] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ForgotPasswordReq] ([Id], [Uid], [Requestdatetime]) VALUES (@Id, @Uid, @Requestdatetime)" SelectCommand="SELECT * FROM [ForgotPasswordReq]" UpdateCommand="UPDATE [ForgotPasswordReq] SET [Uid] = @Uid, [Requestdatetime] = @Requestdatetime WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Object" />
                <asp:Parameter Name="Uid" Type="Int32" />
                <asp:Parameter Name="Requestdatetime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Uid" Type="Int32" />
                <asp:Parameter Name="Requestdatetime" Type="DateTime" />
                <asp:Parameter Name="Id" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>

