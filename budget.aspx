<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="budget.aspx.cs" Inherits="budget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 69%;
            border-collapse: collapse;
            height: 129px;
            margin-left: 261px;
        }
        .auto-style3 {
            width: 642px;
        }
        .auto-style4 {
            width: 520px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="background-color: #99CCFF;">Enter Your Desired&nbsp; Budget (Approx.)</td>
                <td class="auto-style4" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="194px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td style="background-color: #99CCFF">
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be Filled"></asp:RequiredFieldValidator>
                   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Numeric allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style4" style="background-color: #99CCFF">
                    <asp:Button ID="Button1" runat="server" Height="40px" Text="Lets Start!!" Width="133px" OnClick="Button1_Click" BackColor="#4B4B83" />
                </td>
                <td style="background-color: #99CCFF">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

