<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 1075px;
        height: 433px;
    }
        .style10
    {
        width: 184px;
    }
    .style12
    {
        height: 25px;
        width: 184px;
    }
    .style14
    {
        height: 49px;
        }
    .style15
    {
        height: 49px;
        width: 184px;
    }
    .style18
    {
        height: 49px;
        width: 271px;
    }
    .style19
    {
        width: 271px;
    }
    .style20
    {
        height: 32px;
        width: 271px;
    }
    .style21
    {
        width: 184px;
        height: 45px;
    }
    .style22
    {
        width: 271px;
        height: 45px;
    }
    .style23
    {
        height: 45px;
        }
    .style25
    {
        width: 4px;
    }
    .style26
    {
        width: 126px;
    }
    .style27
    {
        height: 32px;
        width: 126px;
    }
    .style28
    {
        width: 67px;
    }
    .style29
    {
        height: 49px;
        width: 67px;
    }
    .style30
    {
        height: 45px;
        width: 67px;
    }
    .style31
    {
        height: 32px;
        width: 67px;
    }
    .style32
    {
        width: 184px;
        height: 55px;
    }
    .style33
    {
        width: 271px;
        height: 55px;
    }
    .style34
    {
        width: 126px;
        height: 55px;
    }
    .style35
    {
        width: 67px;
        height: 55px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
            <table class="style1" style="width: 775px; height: 362px">
            <tr>
                <td style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    class="style32">
                    User Type</td>
                <td class="style33" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="35px" Width="150px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    class="style34">
                    </td>
                <td style="font-family: Calibri; font-size: medium; font-weight: bold" 
                    class="style35">
                    </td>
            </tr>
            <tr>
                <td class="style15" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" >
                    User Id</td>
                <td class="style18" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px"></asp:TextBox>
                &nbsp;
                </td>
                <td class="style14" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="* Enter UserID" Font-Bold="True" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style21" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    Password</td>
                <td class="style22" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="150px" 
                        TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;
                    </td>
                <td class="style23" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="* Enter Password" Font-Bold="True" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        Width="129px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" />
                </td>
                <td class="style19" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    class="style26">
                    &nbsp;</td>
                <td style="font-family: Calibri; font-size: medium; font-weight: bold" 
                    class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366">
                    &nbsp;</td>
                <td style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    class="style19">
                    Not a member yet</td>
                <td style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;" 
                    class="style26">
                    &nbsp;</td>
                <td style="font-family: Calibri; font-size: medium; font-style: normal" 
                    class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366">
                    </td>
                <td class="style20" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Registration for students </asp:HyperLink>
                </td>
                <td class="style27" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    &nbsp;</td>
                <td class="style31" 
                    style="font-family: Calibri; font-size: medium; font-style: normal">
                    &nbsp;</td>
            </tr>
        </table>
                &nbsp;</td>
            <td class="style25">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<img src="images/login.png" style="height: 266px; margin-top: 0px" /></td>
            <td class="style25">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

