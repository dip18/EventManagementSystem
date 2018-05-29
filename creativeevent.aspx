<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="creativeevent.aspx.cs" Inherits="creativeevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
            color: #3333FF;
        }
        .auto-style5 {
            width: 100%;
            border-collapse: collapse;
            height: 59px;
        }
        .auto-style11 {
            font-size: medium;
            width: 265px;
        }
        .auto-style12 {
            width: 170px;
        }
        .auto-style13 {
            font-size: medium;
            width: 198px;
        }
        .auto-style15 {
            font-size: medium;
            width: 177px;
        }
        .auto-style16 {
            font-size: x-large;
            width: 198px;
        }
        .auto-style17 {
            font-size: medium;
            width: 179px;
        }
        .auto-style18 {
            font-size: large;
            width: 179px;
        }
        .auto-style19 {
            font-size: large;
            color: #000099;
        }
        .auto-style20 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: left">
        <strong><span class="auto-style4">Choose Creative Members</span><br />
        </strong>
        <table class="auto-style5">
            <tr>
                <td class="auto-style11" style="background-color: #99CCFF"><strong>Select&nbsp; Creative Catagory</strong></td>
                <td class="auto-style12" style="background-color: #99CCFF">
                    <strong>
                    <asp:DropDownList ID="creativecatdrop" runat="server" AutoPostBack="True" Height="47px" OnSelectedIndexChanged="creativecatdrop_SelectedIndexChanged" Width="146px" BackColor="#FFFFCC">
                        <asp:ListItem>Select Catagory</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF"><strong>Select Creative Person</strong></td>
                <td class="auto-style20" style="background-color: #99CCFF">
                    <strong>
                    <asp:DropDownList ID="creativeperdrop" runat="server" AutoPostBack="True" Height="47px" Width="147px" OnSelectedIndexChanged="creativeperdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Person</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
                <td class="auto-style15" style="background-color: #99CCFF"><strong>Creative ID</strong></td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <strong>
                    <asp:TextBox ID="creativeidtext" runat="server" Enabled="False" style="margin-left: 0px" BackColor="#FFFFCC" Height="21px" Width="146px"></asp:TextBox>
                    </strong>
                </td>
                <td class="auto-style18" style="background-color: #99CCFF"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PanNO</strong></td>
                <td class="auto-style17" style="background-color: #99CCFF">
                    <strong>
                    <asp:TextBox ID="creativepantext" runat="server" Enabled="False" style="margin-left: 0px" BackColor="#FFFFCC" Height="24px" Width="145px"></asp:TextBox>
                    </strong>
                </td>
                <td class="auto-style17" style="background-color: #99CCFF"><strong>&nbsp;Remunaration</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="remutext" runat="server" Height="24px" Width="147px" Enabled="False" BackColor="#FFFFCC"></asp:TextBox>
                    </strong>
                </td>
            </tr>
        </table>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        </strong>&nbsp;<strong><br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="creativebookbutton" runat="server" Height="37px" OnClick="creativebookbutton_Click" Text="Book" Width="132px" BackColor="#4B4B83" style="font-weight: 700" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="creativenextbutton" runat="server" Height="37px" OnClick="creativenextbutton_Click" Text="Next " Width="134px" Visible="False" BackColor="#4B4B83" style="font-weight: 700" />
        <br />
        <br />
        </strong><span class="auto-style19"><strong>Information about selected CREATIVE Members are shown below :</strong></span><strong><br />
        <br />
        </strong>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Address], [Emailid], [Phoneno], [Sex], [PanNo], [Remunaration] FROM [creative]"></asp:SqlDataSource>
    </p>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phoneno:
                <asp:Label ID="PhonenoLabel" runat="server" Text='<%# Eval("Phoneno") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
                <br />
                Remunaration:
                <asp:Label ID="RemunarationLabel" runat="server" Text='<%# Eval("Remunaration") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Emailid:
                <asp:TextBox ID="EmailidTextBox" runat="server" Text='<%# Bind("Emailid") %>' />
                <br />
                Phoneno:
                <asp:TextBox ID="PhonenoTextBox" runat="server" Text='<%# Bind("Phoneno") %>' />
                <br />
                Sex:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                <br />
                PanNo:
                <asp:TextBox ID="PanNoTextBox" runat="server" Text='<%# Bind("PanNo") %>' />
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
                <br />Emailid:
                <asp:TextBox ID="EmailidTextBox" runat="server" Text='<%# Bind("Emailid") %>' />
                <br />Phoneno:
                <asp:TextBox ID="PhonenoTextBox" runat="server" Text='<%# Bind("Phoneno") %>' />
                <br />Sex:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                <br />PanNo:
                <asp:TextBox ID="PanNoTextBox" runat="server" Text='<%# Bind("PanNo") %>' />
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
            <li style="background-color: #E0FFFF;color: #333333;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phoneno:
                <asp:Label ID="PhonenoLabel" runat="server" Text='<%# Eval("Phoneno") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
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
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phoneno:
                <asp:Label ID="PhonenoLabel" runat="server" Text='<%# Eval("Phoneno") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
                <br />
                Remunaration:
                <asp:Label ID="RemunarationLabel" runat="server" Text='<%# Eval("Remunaration") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

