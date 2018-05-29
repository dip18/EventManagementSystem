<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="technicianevent.aspx.cs" Inherits="technicianevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            border-collapse: collapse;
            font-size: large;
        height: 58px;
    }
        .auto-style3 {
            width: 225px;
            font-size: large;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style5 {
            width: 182px;
        }
        .auto-style6 {
            width: 114px;
        }
        .auto-style7 {
            width: 250px;
        }
        .auto-style9 {
            width: 382px;
        }
        .auto-style11 {
            color: #003366;
        }
        .auto-style12 {
            width: 153px;
        }
        .auto-style13 {
            width: 168px;
        }
        .auto-style14 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="background-color: #99CCFF"><strong>Select Technitian Catagroy</strong></td>
                <td class="auto-style4" style="background-color: #99CCFF">
                    
                    <asp:DropDownList ID="techcatdrop" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="techcatdrop_SelectedIndexChanged" Width="164px" BackColor="#FFFFCC">
                        <asp:ListItem>Select Catagory</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
                <td class="auto-style5" style="background-color: #99CCFF"><strong>Select Technitian Name </strong></td>
                <td class="auto-style4" style="background-color: #99CCFF">
                    <asp:DropDownList ID="techperdrop" runat="server" AutoPostBack="True" Height="20px" Width="157px" OnSelectedIndexChanged="techperdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Person</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6" style="background-color: #99CCFF"><strong>Technitian ID</strong></td>
                <td class="auto-style7" style="background-color: #99CCFF">
                    <asp:TextBox ID="techidtext" runat="server" Enabled="False" Height="22px" Width="143px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style14" style="background-color: #99CCFF"><strong>Technitian Pancard No</strong></td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:TextBox ID="techpantext" runat="server" Enabled="False" Height="22px" Width="143px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style12" style="background-color: #99CCFF"><strong>Remunaration</strong></td>
                <td class="auto-style9" style="background-color: #99CCFF">
                    <asp:TextBox ID="techremutext" runat="server" Enabled="False" BackColor="#FFFFCC" Height="21px" Width="177px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <strong>
        <br class="auto-style11" />
        </strong>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
    </p>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
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
            <li style="background-color: #008A8C; color: #FFFFFF;">Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Emailid:
                <asp:TextBox ID="EmailidTextBox" runat="server" Text='<%# Bind("Emailid") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Sex:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                <br />
                PanNo:
                <asp:TextBox ID="PanNoTextBox" runat="server" Text='<%# Bind("PanNo") %>' />
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
                <br />Emailid:
                <asp:TextBox ID="EmailidTextBox" runat="server" Text='<%# Bind("Emailid") %>' />
                <br />Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />Sex:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                <br />PanNo:
                <asp:TextBox ID="PanNoTextBox" runat="server" Text='<%# Bind("PanNo") %>' />
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
            <li style="background-color: #DCDCDC; color: #000000;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
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
            <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Emailid:
                <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                Sex:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                <br />
                PanNo:
                <asp:Label ID="PanNoLabel" runat="server" Text='<%# Eval("PanNo") %>' />
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
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Address], [Emailid], [Phone], [Sex], [PanNo], [Resume], [Remunaration] FROM [technitian]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="technextbutton" runat="server" Height="41px" Text="Next " Width="132px" BackColor="#4B4B83" style="font-weight: 700" Visible="False" OnClick="technextbutton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="techbookbutton" runat="server" Height="40px" Text="Book" Width="148px" BackColor="#4B4B83" style="font-weight: 700; margin-left: 88px" OnClick="techbookbutton_Click" Enabled="False" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

