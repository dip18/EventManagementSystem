<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="artistreg.aspx.cs" Inherits="artistreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            border-collapse: collapse;
            height: 374px;
        }
        .auto-style2 {
            width: 655px;
            text-align: right;
        }
        .auto-style3 {
            width: 270px;
        }
        .auto-style4 {
            width: 655px;
            text-align: right;
            height: 64px;
        }
        .auto-style5 {
            width: 270px;
            height: 64px;
        }
        .auto-style7 {
            width: 655px;
            text-align: right;
            height: 35px;
        }
        .auto-style8 {
            width: 270px;
            height: 35px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            height: 64px;
            width: 168px;
        }
        .auto-style12 {
            height: 35px;
            width: 168px;
        }
        .auto-style13 {
            width: 168px;
        }
        .auto-style14 {
            width: 232px;
            height: 64px;
        }
        .auto-style15 {
            width: 232px;
            height: 35px;
        }
        .auto-style16 {
            width: 232px;
        }
        .auto-style18 {
        width: 655px;
        text-align: right;
        height: 47px;
    }
    .auto-style19 {
        width: 270px;
        height: 47px;
    }
    .auto-style20 {
        width: 168px;
        height: 47px;
    }
    .auto-style21 {
        width: 232px;
        height: 47px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <table align="center" class="auto-style1" style="background-color: #66CCFF; height: 659px;">
            <tr>
                <td class="auto-style4" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Artist Type</td>
                <td class="auto-style5" style="background-color: #99CCFF">
                    <asp:DropDownList ID="artistdrop" runat="server" AutoPostBack="True" Height="24px" Width="212px" OnSelectedIndexChanged="artistdrop_SelectedIndexChanged" BackColor="#FFFFCC">
                        <asp:ListItem>Select Actor</asp:ListItem>
                        <asp:ListItem>Lead Actor</asp:ListItem>
                        <asp:ListItem>Supporting Actor</asp:ListItem>
                        <asp:ListItem>Child Actor</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style14" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Select Artist Type"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style7" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                <td class="auto-style8" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistnametext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style12" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="artistnametext" ErrorMessage="Only Accpet Alphabet" style="text-align: center" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style15" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="artistnametext" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistaddtext" runat="server" Height="74px" style="text-align: right" TextMode="MultiLine" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="artistaddtext" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">Email ID</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistemailtext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="artistemailtext" ErrorMessage="Not Proper Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="artistemailtext" ErrorMessage="Please Enter Email ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph. no.</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistphonetext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="artistphonetext" ErrorMessage="Must be 10 Digit" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="artistphonetext" ErrorMessage="Please Enter Phone No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">Sex</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:RadioButtonList ID="artistradio" runat="server" AutoPostBack="True" Height="24px" RepeatDirection="Horizontal" Width="212px" OnSelectedIndexChanged="artistradio_SelectedIndexChanged">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">Pan Card No.</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistpantext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    &nbsp;</td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="artistpantext" ErrorMessage="Please Enter Pan Card No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Portfolio</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:FileUpload ID="FileUpload2" runat="server" BackColor="#FFFFCC" Width="212px" />
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:Label ID="Label1" runat="server" Height="25px" Text="Label" Width="150px" Visible="False"></asp:Label>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Please Enter Artist Picture"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:FileUpload ID="FileUpload3" runat="server" BackColor="#FFFFCC" Width="212px" />
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:Label ID="Label2" runat="server" Height="25px" Text="Label" Width="150px" Visible="False"></asp:Label>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload3" ErrorMessage="Please Enter Artist Resume"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remunaration</td>
                <td class="auto-style19" style="background-color: #99CCFF">
                    <asp:TextBox ID="artistremutext" runat="server" Width="212px" CssClass="auto-style10" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style20" style="background-color: #99CCFF"></td>
                <td class="auto-style21" style="background-color: #99CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="artistremutext" ErrorMessage="Please Enter Artist Remunaration"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style3" style="background-color: #99CCFF">
                    <asp:Button ID="artistavebutton" runat="server" Height="40px" Text="Save Details" Width="140px" OnClick="artistavebutton_Click" BackColor="#4B4B83" style="font-weight: 700; color: #FFFFFF"/>
                </td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/entrysearch.aspx">Back</asp:HyperLink>
                </td>
                <td class="auto-style16" style="background-color: #99CCFF">&nbsp;</td>
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

