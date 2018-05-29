<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="techreg.aspx.cs" Inherits="techreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 1025px;
            border-collapse: collapse;
            height: 682px;
        }
        .auto-style4 {
            width: 306px;
            text-align: center;
            height: 70px;
            font-weight: bold;
        }
        .auto-style5 {
            width: 367px;
            height: 70px;
        }
        .auto-style6 {
            height: 54px;
            text-align: left;
        }
        .auto-style2 {
            width: 306px;
            text-align: center;
        }
        .auto-style3 {
            width: 367px;
        }
        .auto-style7 {
            height: 70px;
            width: 278px;
        }
        .auto-style8 {
            width: 278px;
        }
        .auto-style9 {
            width: 306px;
            text-align: center;
            height: 75px;
        }
        .auto-style10 {
            width: 367px;
            height: 75px;
        }
        .auto-style11 {
            height: 75px;
            width: 278px;
        }
        .auto-style12 {
            height: 75px;
            text-align: left;
        }
        .auto-style13 {
            width: 306px;
            text-align: center;
            height: 57px;
        }
        .auto-style14 {
            width: 367px;
            height: 57px;
        }
        .auto-style15 {
            width: 278px;
            height: 57px;
        }
        .auto-style16 {
            height: 57px;
        }
        .auto-style17 {
            width: 306px;
            text-align: center;
            height: 56px;
            font-weight: bold;
        }
        .auto-style18 {
            width: 367px;
            height: 56px;
        }
        .auto-style19 {
            width: 278px;
            height: 56px;
        }
        .auto-style20 {
            height: 56px;
        }
        .auto-style21 {
            width: 306px;
            text-align: center;
            height: 51px;
            font-weight: bold;
        }
        .auto-style22 {
            width: 367px;
            height: 51px;
        }
        .auto-style23 {
            width: 278px;
            height: 51px;
        }
        .auto-style24 {
            height: 51px;
        }
        .auto-style25 {
            width: 306px;
            text-align: center;
            height: 54px;
            font-weight: bold;
        }
        .auto-style26 {
            width: 367px;
            height: 54px;
        }
        .auto-style27 {
            width: 278px;
            height: 54px;
        }
        .auto-style28 {
            height: 54px;
        }
        .auto-style32 {
            height: 70px;
        }
        .auto-style33 {
            width: 306px;
            text-align: center;
            height: 63px;
            font-weight: bold;
        }
        .auto-style34 {
            width: 367px;
            height: 63px;
        }
        .auto-style35 {
            height: 63px;
            width: 278px;
        }
        .auto-style36 {
            height: 63px;
        }
        .auto-style37 {
            width: 306px;
            text-align: center;
            height: 54px;
        }
        .auto-style40 {
            color: #003366;
            font-size: large;
        }
        .auto-style41 {
            width: 306px;
            text-align: right;
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <table align="center" class="auto-style1">
            <caption class="auto-style40">
                <strong><em><br />
                </em></strong></caption>
            <tr>
                <td class="auto-style37" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;Technitian Catagory</strong> </td>
                <td class="auto-style26" style="background-color: #99CCFF">
                    <asp:DropDownList ID="techdrop" runat="server" AutoPostBack="True" Height="26px" Width="212px" OnSelectedIndexChanged="techdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Technician Person</asp:ListItem>
                        <asp:ListItem>Production Manager</asp:ListItem>
                        <asp:ListItem>Assistent Production Manager</asp:ListItem>
                        <asp:ListItem>Make Up Man</asp:ListItem>
                        <asp:ListItem>Assistent Make Up Man</asp:ListItem>
                        <asp:ListItem>Hair Dresser</asp:ListItem>
                        <asp:ListItem>Assistent Hair Dresser</asp:ListItem>
                        <asp:ListItem>Art Director</asp:ListItem>
                        <asp:ListItem>Art Setup</asp:ListItem>
                        <asp:ListItem>Light Man</asp:ListItem>
                        <asp:ListItem>Camera Man</asp:ListItem>
                        <asp:ListItem>Production Boy</asp:ListItem>
                        <asp:ListItem>Tea Boy</asp:ListItem>
                        <asp:ListItem>Trolly Setup</asp:ListItem>
                        <asp:ListItem>Operator</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style27" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style6" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Select Technician Type"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;<strong style="text-align: center"> Name</strong></td>
                <td class="auto-style10" style="background-color: #99CCFF">
                    <asp:TextBox ID="technametext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style11" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="technametext" ErrorMessage="Only Accept Alphabet" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="technametext" ErrorMessage="Please Enter Name" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="text-align: center"> Address</strong></td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:TextBox ID="techaddtext" runat="server" Height="74px" style="text-align: right" TextMode="MultiLine" Width="210px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style8" style="background-color: #99CCFF">&nbsp;</td>
                <td style="background-color: #99CCFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="techaddtext" ErrorMessage="Please Enter Address" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Email ID</strong></td>
                <td class="auto-style14" style="background-color: #99CCFF">
                    <asp:TextBox ID="techemailtext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style15" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="techemailtext" ErrorMessage="Not Proper Format of Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td style="background-color: #99CCFF;" class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="techemailtext" ErrorMessage="Please Enter Email ID" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph. no.</td>
                <td class="auto-style18" style="background-color: #99CCFF">
                    <asp:TextBox ID="techphonetext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style19" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="techphonetext" ErrorMessage="Must be 10 Digit" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td style="background-color: #99CCFF;" class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="techphonetext" ErrorMessage="Please Enter Phone No" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style21" style="background-color: #99CCFF">Sex</td>
                <td class="auto-style22" style="background-color: #99CCFF">
                    <asp:RadioButtonList ID="techradio" runat="server" AutoPostBack="True" Height="24px" RepeatDirection="Horizontal" Width="212px" OnSelectedIndexChanged="techradio_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style23" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td style="background-color: #99CCFF;" class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Slect Gender" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style25" style="background-color: #99CCFF">Pan Card No.</td>
                <td class="auto-style26" style="background-color: #99CCFF">
                    <asp:TextBox ID="techpantext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style27" style="background-color: #99CCFF">
                    </td>
                <td style="background-color: #99CCFF;" class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="techpantext" ErrorMessage="Please Enter Pan Card No" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume</td>
                <td class="auto-style5" style="background-color: #99CCFF">
                    <asp:FileUpload ID="FileUpload4" runat="server" BackColor="#FFFFCC" Width="212px" />
                </td>
                <td class="auto-style7" style="background-color: #99CCFF">
                    <asp:Label ID="Label1" runat="server" Height="25px" Text="Label" Width="150px" Visible="False"></asp:Label>
                </td>
                <td style="background-color: #99CCFF;" class="auto-style32">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload4" ErrorMessage="Please Select Resume" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style33" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remunaration</td>
                <td class="auto-style34" style="background-color: #99CCFF">
                    <asp:TextBox ID="techremutext" runat="server" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style35" style="background-color: #99CCFF"></td>
                <td style="background-color: #99CCFF;" class="auto-style36">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="techremutext" ErrorMessage="Please Enter Remunaration" Height="20px" style="text-align: center" Width="200px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style41" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:Button ID="techsavebutton" runat="server" Height="44px" Text="Save Details" Width="140px" OnClick="techsavebutton_Click" BackColor="#4B4B83" style="font-size: medium; font-weight: 700; color: #FFFFFF"/>
                </td>
                <td class="auto-style8" style="background-color: #99CCFF">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/entrysearch.aspx">Back</asp:HyperLink>
                </td>
                <td style="background-color: #99CCFF">&nbsp;</td>
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

