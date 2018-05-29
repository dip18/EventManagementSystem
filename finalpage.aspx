<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="finalpage.aspx.cs" Inherits="finalpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 76%;
            border-collapse: collapse;
            height: 369px;
        }
        .auto-style3 {
            font-size: large;
            width: 205px;
        }
        .auto-style5 {
            width: 110px;
        }
        .auto-style6 {
            width: 5px;
            text-align: center;
        }
        .auto-style7 {
            width: 228px;
        }
        .auto-style8 {
            width: 205px;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="background-color: #99CCFF"><strong>Event&#39;s Gross Costing</strong></td>
                <td class="auto-style5" style="background-color: #99CCFF">
                    <asp:TextBox ID="costtext" runat="server" Enabled="False" Height="30px" Width="178px"></asp:TextBox>
                </td>
                <td class="auto-style6" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style7" style="background-color: #99CCFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #99CCFF"><strong>Enter Your Email ID</strong></td>
                <td class="auto-style5" style="background-color: #99CCFF">
                    <asp:TextBox ID="emailtext" runat="server" Height="30px" Width="178px"></asp:TextBox>
                </td>
                <td class="auto-style6" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtext" ErrorMessage="Must be Filled"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtext" ErrorMessage="Not Proper Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style5" style="background-color: #99CCFF">
                    <asp:Button ID="finalbutton" runat="server" Height="39px" OnClick="finalbutton_Click" Text="Final Booking" Width="126px" BackColor="#4B4B83" />
                </td>
                <td class="auto-style6" style="background-color: #99CCFF">
                    <asp:Label ID="Label1" runat="server" Height="51px" Width="300px"></asp:Label>
                </td>
                <td class="auto-style7" style="background-color: #99CCFF">
                    <asp:Button ID="gotohomebutton" runat="server" Enabled="False" Height="64px" OnClick="gotohomebutton_Click" Text="Go To Home" Width="146px" BackColor="#4B4B83" />
                </td>
            </tr>
        </table>
&nbsp;<strong><span class="auto-style9">Previously Booked Event</span></strong><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" style="text-align: center" Width="1264px">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Costing" HeaderText="Costing" SortExpression="Costing" />
                <asp:BoundField DataField="Date&amp;Time" HeaderText="Date&amp;Time" SortExpression="Date&amp;Time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [finalbooking]"></asp:SqlDataSource>
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

