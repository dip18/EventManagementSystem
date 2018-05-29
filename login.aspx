<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 4px;
            height: 5px;
            table-layout: inherit;
            z-index: -1;
            margin-left: 120px;
        }
        .auto-style8 {
            width: 544px;
            height: 219px;
            margin-left: 421px;
        }
        .auto-style10 {
            height: 56px;
        text-align: center;
    }
    .auto-style11 {
        margin-left: 0px;
    }
    .auto-style12 {
        height: 56px;
        width: 263px;
        text-align: center;
    }
    .auto-style13 {
        width: 263px;
    }
    .auto-style14 {
        width: 263px;
        text-align: center;
    }
    .auto-style15 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style9">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style8" style="background-color: #99CCFF; " align="center" border="0">
        <tr>
            <td class="auto-style12">Enter ID</td>
            <td class="auto-style10">
                <asp:TextBox ID="loginidtext" runat="server" Height="21px" Width="142px" BackColor="#FFFFCC" BorderColor="#333333" ForeColor="#FF9999"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Enter&nbsp; Password</td>
            <td class="auto-style15">
                <asp:TextBox ID="loginpwtext" runat="server" Height="21px" Width="142px" BackColor="#FFFFCC" BorderColor="#333333" ForeColor="#FF6666" CssClass="auto-style11" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15">
                <asp:Button ID="loginbutton" runat="server" Height="31px" Text="Login" Width="117px" BackColor="#4B4B83" OnClick="loginbutton_Click" />
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="Label1" runat="server" Height="28px" Width="118px"></asp:Label>
            </td>
        </tr>
    </table>
    </p>
</asp:Content>

