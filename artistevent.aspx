<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="artistevent.aspx.cs" Inherits="artistevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 82%;
            border-collapse: collapse;
        }
        .auto-style4 {
            width: 227px;
            height: 93px;
        }
        .auto-style5 {
            width: 179px;
            font-size: large;
            height: 93px;
        }
        .auto-style7 {
            width: 136px;
            font-size: large;
            height: 93px;
        }
        .auto-style8 {
            width: 224px;
            height: 93px;
        }
        .auto-style9 {
            height: 93px;
        }
        .auto-style10 {
            width: 202px;
            height: 93px;
        }
        .auto-style11 {
            width: 181px;
            height: 93px;
        }
        .auto-style12 {
            width: 100px;
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; text-align: center;">
        <br />
        <table class="auto-style2" style="background-color: #66CCFF; width: 100%;">
            <tr>
                <td class="auto-style10"><strong style="color: #000000; background-color: #66CCFF;" class="auto-style12">Select Artist Type</strong></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="artistcatdrop" runat="server" AutoPostBack="True" Height="108px" Width="159px" OnSelectedIndexChanged="artistcatdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Catagory</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5"><strong>Select Artist&#39;s Name</strong></td>
                <td class="auto-style11">
                    <asp:DropDownList ID="artistperdrop" runat="server" AutoPostBack="True" Height="108px" Width="189px" OnSelectedIndexChanged="artistperdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Person</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7"><strong>Artist ID</strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="artistidtext" runat="server" Enabled="False" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style8"><strong>Artist Pancard NO</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="artistpantext" runat="server" Enabled="False" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style8"><strong>Respective Remunaration</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="artistremutext" runat="server" Enabled="False" Width="141px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="143px" style="text-align: left; margin-top: 0px" Width="181px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" style="font-size: medium">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                    PhoneNo:
                    <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PancardNo:
                    <asp:Label ID="PancardNoLabel" runat="server" Text='<%# Eval("PancardNo") %>' />
                    <br />
                    Resume:
                    <asp:Label ID="ResumeLabel" runat="server" Text='<%# Eval("Resume") %>' />
                    <br />
                    Remunaration:
                    <asp:Label ID="RemunarationLabel" runat="server" Text='<%# Eval("Remunaration") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    EmailID:
                    <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                    <br />
                    PhoneNo:
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                    <br />
                    Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    PancardNo:
                    <asp:TextBox ID="PancardNoTextBox" runat="server" Text='<%# Bind("PancardNo") %>' />
                    <br />
                    Resume:
                    <asp:TextBox ID="ResumeTextBox" runat="server" Text='<%# Bind("Resume") %>' />
                    <br />
                    Remunaration:
                    <asp:TextBox ID="RemunarationTextBox" runat="server" Text='<%# Bind("Remunaration") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />EmailID:
                    <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                    <br />PhoneNo:
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                    <br />Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />PancardNo:
                    <asp:TextBox ID="PancardNoTextBox" runat="server" Text='<%# Bind("PancardNo") %>' />
                    <br />Resume:
                    <asp:TextBox ID="ResumeTextBox" runat="server" Text='<%# Bind("Resume") %>' />
                    <br />Remunaration:
                    <asp:TextBox ID="RemunarationTextBox" runat="server" Text='<%# Bind("Remunaration") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                    PhoneNo:
                    <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PancardNo:
                    <asp:Label ID="PancardNoLabel" runat="server" Text='<%# Eval("PancardNo") %>' />
                    <br />
                    Resume:
                    <asp:Label ID="ResumeLabel" runat="server" Text='<%# Eval("Resume") %>' />
                    <br />
                    Remunaration:
                    <asp:Label ID="RemunarationLabel" runat="server" Text='<%# Eval("Remunaration") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                    PhoneNo:
                    <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PancardNo:
                    <asp:Label ID="PancardNoLabel" runat="server" Text='<%# Eval("PancardNo") %>' />
                    <br />
                    Resume:
                    <asp:Label ID="ResumeLabel" runat="server" Text='<%# Eval("Resume") %>' />
                    <br />
                    Remunaration:
                    <asp:Label ID="RemunarationLabel" runat="server" Text='<%# Eval("Remunaration") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Address], [EmailID], [PhoneNo], [Sex], [PancardNo], [Resume], [Remunaration] FROM [artist]"></asp:SqlDataSource>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="artistnextbutton" runat="server" Height="47px" OnClick="creativenextbutton_Click" Text="Next " Width="157px" BackColor="#4B4B83" style="font-weight: 700" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="artistbookbutton" runat="server" Height="47px" Text="Book" Width="157px" BackColor="#4B4B83" style="font-weight: 700" OnClick="artistbookbutton_Click" Enabled="False" />
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
        <br />
    </p>
</asp:Content>

