<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPassChange.aspx.cs" Inherits="Pages_AdminPassChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1>Password Change Log:</h1>
        <hr />
        <asp:button runat="server" text="Back" OnClick="Unnamed1_Click" /><br />
        <asp:gridview id="GridView2" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" datakeynames="Id" datasourceid="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                <asp:BoundField DataField="Requestdatetime" HeaderText="Requestdatetime" SortExpression="Requestdatetime" />
            </Columns>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:ConnectionString %>" deletecommand="DELETE FROM [ForgotPasswordReq] WHERE [Id] = @Id" insertcommand="INSERT INTO [ForgotPasswordReq] ([Id], [Uid], [Requestdatetime]) VALUES (@Id, @Uid, @Requestdatetime)" selectcommand="SELECT * FROM [ForgotPasswordReq]" updatecommand="UPDATE [ForgotPasswordReq] SET [Uid] = @Uid, [Requestdatetime] = @Requestdatetime WHERE [Id] = @Id">
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
            </asp:sqldatasource>
        <br />
    </div>

</asp:Content>

