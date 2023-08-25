<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grid2.aspx.cs" Inherits="MasterPages.Grid2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td><h2 class ="text-center">GridView Example Two Drag and Drop</h2></td>
           
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" ReadOnly="True" SortExpression="CustomerId" />
                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                        <asp:BoundField DataField="CustomerCity" HeaderText="CustomerCity" SortExpression="CustomerCity" />
                        <asp:BoundField DataField="CustomerODLimit" HeaderText="CustomerODLimit" SortExpression="CustomerODLimit" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustsDbConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerId], [CustomerName], [CustomerCity], [CustomerODLimit]) VALUES (@CustomerId, @CustomerName, @CustomerCity, @CustomerODLimit)" ProviderName="<%$ ConnectionStrings:CustsDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustomerCity] = @CustomerCity, [CustomerODLimit] = @CustomerODLimit WHERE [CustomerId] = @CustomerId">
                    <DeleteParameters>
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerCity" Type="String" />
                        <asp:Parameter Name="CustomerODLimit" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerCity" Type="String" />
                        <asp:Parameter Name="CustomerODLimit" Type="Double" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
