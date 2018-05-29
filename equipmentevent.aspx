<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="equipmentevent.aspx.cs" Inherits="equipmentevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 68%;
            border-collapse: collapse;
            height: 600px;
            margin-left: 144px;
            margin-right: 0px;
        }
        .auto-style3 {
            color: #0000FF;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 231px;
        }
        .auto-style7 {
            width: 207px;
        }
        .auto-style8 {
            width: 247px;
            text-align: center;
        }
        .auto-style9 {
            color: #000099;
        }
        .auto-style14 {
            width: 232px;
            font-size: large;
            height: 211px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style17 {
            width: 207px;
            height: 211px;
        }
        .auto-style18 {
            width: 247px;
            text-align: center;
            height: 211px;
        }
        .auto-style19 {
            width: 231px;
            height: 211px;
        }
        .auto-style20 {
            width: 410px;
            font-size: large;
            height: 188px;
        }
        .auto-style21 {
            width: 410px;
            height: 211px;
        }
        .auto-style22 {
            width: 410px;
        }
        .auto-style23 {
            width: 122px;
            height: 211px;
        }
        .auto-style24 {
            width: 122px;
        }
        .auto-style26 {
            width: 122px;
            height: 188px;
        }
        .auto-style27 {
            width: 207px;
            height: 188px;
        }
        .auto-style28 {
            width: 247px;
            text-align: center;
            height: 188px;
        }
        .auto-style29 {
            width: 231px;
            height: 188px;
        }
        .auto-style30 {
            width: 105px;
            height: 211px;
        }
        .auto-style31 {
            width: 105px;
            height: 188px;
        }
        .auto-style32 {
            width: 105px;
        }
        .auto-style33 {
            width: 232px;
            height: 188px;
        }
        .auto-style34 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;</span><span class="auto-style9"><strong><em>EQUIPMENTS AVAILABILITY</em></strong></span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FINAL COSTING</span>
        <table class="auto-style2" style="background-color: #99CCFF">
            <tr>
                <td class="auto-style14"><strong>Equipment</strong></td>
                <td class="auto-style23">
                    <asp:DropDownList ID="equipnamedrop" runat="server" Height="64px" OnSelectedIndexChanged="equipnamedrop_SelectedIndexChanged" Width="154px" AutoPostBack="True" BackColor="#FFFFCC">
                        <asp:ListItem>Seelct Equipment</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21">&nbsp;<strong><span class="auto-style15"> Models</span></strong></td>
                <td class="auto-style17">
                    <asp:DropDownList ID="equipmoddrop" runat="server" AutoPostBack="True" Height="96px" Width="182px" OnSelectedIndexChanged="equipmoddrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Model</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="equipcosttext" runat="server" BackColor="#FFFFCC" Height="45px" Width="148px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="equipnotext" runat="server" BackColor="#FFFFCC" Width="159px" Height="45px"></asp:TextBox>
&nbsp;&nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Final" Width="81px" />
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="equipfinalcosttext" runat="server" Height="41px" Width="166px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="addequipbutton" runat="server" Height="57px" OnClick="addequipbutton_Click" Text="Add Equipment" Width="163px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style20"><strong>Lodging and Fooding </strong> </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="lodgingdrop" runat="server" AutoPostBack="True" Height="41px" OnSelectedIndexChanged="lodgingdrop_SelectedIndexChanged" Width="185px" BackColor="#FFFFCC">
                        <asp:ListItem>Select Class</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style28"></td>
                <td class="auto-style31">
                    <asp:TextBox ID="lodgingcosttext" runat="server" Height="29px" Width="161px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style29">
                    <asp:Button ID="addlodbutton" runat="server" Height="43px" OnClick="addlodbutton_Click" Text="Add Lodging &amp; Fooding" Width="160px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="finalbutton" runat="server" Height="52px" Text="Final Budget Sheet" Width="145px" BackColor="#4B4B83" style="font-weight: 700; color: #FFFFFF" OnClick="finalbutton_Click" Visible="False" />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

