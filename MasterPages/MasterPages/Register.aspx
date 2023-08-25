<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MasterPages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 217px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">Customer Id</td>
            <td>
                <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Customer Name</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Customer City</td>
            <td>
                <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Customer OD Limit</td>
            <td>
                <asp:TextBox ID="TxtOd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click"/>
            </td>
        </tr>
    </table>
    <div>
        <asp:Label ID="Lbl" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>