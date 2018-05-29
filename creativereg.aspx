<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="creativereg.aspx.cs" Inherits="creativereg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            border-collapse: collapse;
            height: 502px;
        }
        .auto-style2 {
            width: 385px;
            text-align: right;
        }
        .auto-style3 {
            width: 367px;
        }
        .auto-style4 {
            width: 385px;
            text-align: center;
            height: 64px;
        }
        .auto-style5 {
            width: 367px;
            height: 64px;
        }
        .auto-style6 {
            height: 64px;
            width: 195px;
        }
        .auto-style7 {
            width: 385px;
            text-align: center;
            height: 35px;
        }
        .auto-style8 {
            width: 367px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
            width: 195px;
        }
        .auto-style10 {
            height: 64px;
            width: 442px;
        }
        .auto-style11 {
            height: 35px;
            width: 442px;
            margin-left: 160px;
        }
        .auto-style12 {
            width: 442px;
        }
        .auto-style13 {
            width: 1157px;
            border-collapse: collapse;
            height: 597px;
        }
        .auto-style14 {
            width: 385px;
            text-align: center;
        }
        .auto-style15 {
            width: 1166px;
            height: 0px;
            margin-left: 274px;
            margin-right: 0px;
        }
        .auto-style16 {
            width: 195px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-image: none; background-color: #FFFFFF;" class="auto-style15">
        <table align="center" class="auto-style13" style="background-color: #99CCFF">
            <tr>
                <td class="auto-style4" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Creative Team</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="createdrop" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="createdrop_SelectedIndexChanged" Width="212px" BackColor="#FFFFCC">
                        <asp:ListItem>Select Creative Person</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                        <asp:ListItem>Associate Director</asp:ListItem>
                        <asp:ListItem>Associate Director(Chief)</asp:ListItem>
                        <asp:ListItem>Associate Director 1</asp:ListItem>
                        <asp:ListItem>Associate Director 2</asp:ListItem>
                        <asp:ListItem>Associate Director 3</asp:ListItem>
                        <asp:ListItem>Observer</asp:ListItem>
                        <asp:ListItem>Directir of Photography</asp:ListItem>
                        <asp:ListItem>Cameraman</asp:ListItem>
                        <asp:ListItem>Assitent Cameraman</asp:ListItem>
                        <asp:ListItem>Music Dierctor</asp:ListItem>
                        <asp:ListItem>Music Composer</asp:ListItem>
                        <asp:ListItem>Script Writter</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Select Creative Team Type"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style7" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="createnametext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="createnametext" ErrorMessage="Only Accept Alphabet" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="createnametext" ErrorMessage="Please Enter Name" style="text-align: right"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="createaddtext" runat="server" Height="74px" style="text-align: right" TextMode="MultiLine" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="createaddtext" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email ID</td>
                <td class="auto-style3">
                    <asp:TextBox ID="createemailtext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="createemailtext" ErrorMessage="Not Proper Format of Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="createemailtext" ErrorMessage="Please Enter Email ID"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph. no.</td>
                <td class="auto-style3">
                    <asp:TextBox ID="createphonetext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="createphonetext" ErrorMessage="Must Be 10 Digit" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="createphonetext" ErrorMessage="Please Enter Phone No"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">Sex</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="createradio" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="createradio_SelectedIndexChanged" RepeatDirection="Horizontal" Width="201px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Select Gender"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">Pan Card No.</td>
                <td class="auto-style3">
                    <asp:TextBox ID="createpantext" runat="server" Height="19px" style="text-align: right" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="createpantext" ErrorMessage="Please Enter Pan Card No"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFFCC" Height="19px" Width="212px" />
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label1" runat="server" Height="25px" style="text-align: center" Text="Label" Width="150px" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please Select Resume"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remunaration</td>
                <td class="auto-style3">
                    <asp:TextBox ID="createremutext" runat="server" Width="212px" BackColor="#FFFFCC"></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="createremutext" ErrorMessage="Please Enter Remunaration"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #99CCFF">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="createsavebutton" runat="server" Height="40px" Text="Save Details" Width="140px" OnClick="createsavebutton_Click" BackColor="#4B4B83" style="font-weight: 700; color: #FFFFFF" />
                </td>
                <td class="auto-style16">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/entrysearch.aspx" style="text-align: right">Back</asp:HyperLink>
                </td>
                <td class="auto-style12">&nbsp;</td>
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

