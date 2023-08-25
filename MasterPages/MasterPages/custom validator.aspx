<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="custom validator.aspx.cs" Inherits="MasterPages.custom_validator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 307px;
        }
        .auto-style2 {
            width: 255px;
        }
    .auto-style3 {
        width: 307px;
        height: 27px;
    }
    .auto-style4 {
        width: 255px;
        height: 27px;
    }
    .auto-style5 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Custom Validator Page</h2>
    <p class="text-center">&nbsp;</p>
    <table class="w-100">
        <tr>
            <td class="auto-style3">Enter Lucky Even Number</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtEvenNum" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtEvenNum" ErrorMessage="Only Even Number is allowed!!" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
<tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="BtnSubmit" runat="server" Text="SubmitChoice" OnClick="BtnSubmit_Click" />


            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
	<div><asp:Label ID="LblMsg" runat="server" Text="LblMsg"></asp:Label></div>
</asp:Content>