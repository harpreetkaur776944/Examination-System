<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="changePasswordAdmin.aspx.cs" Inherits="changePasswordAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            width: 90px;
            height: 52px;
        }
        .style2
        {
            height: 52px;
        }
        .style18
        {
            width: 90px;
            height: 31px;
        }
        .style23
        {
            width: 233px;
            height: 31px;
        }
        .style12
        {
            width: 62px;
            height: 31px;
        }
        .style13
        {
            width: 802px;
            height: 31px;
        }
        .style19
        {
            width: 90px;
            height: 30px;
        }
        .style24
        {
            width: 233px;
            height: 30px;
        }
        .style14
        {
            width: 62px;
            height: 30px;
        }
        .style15
        {
            width: 802px;
            height: 30px;
        }
        .style22
        {
            height: 32px;
            width: 90px;
        }
        .style28
        {
            width: 233px;
        }
        .style27
        {
            height: 32px;
            width: 62px;
        }
        .style16
        {
            width: 802px;
            height: 32px;
        }
        .style33
        {
            width: 90px;
            height: 55px;
        }
        .style30
        {
            width: 233px;
            height: 55px;
        }
        .style31
        {
            width: 62px;
            height: 55px;
        }
        .style32
        {
            width: 802px;
            height: 55px;
        }
        .style21
        {
            width: 90px;
            height: 94px;
        }
        .style26
        {
            width: 233px;
            height: 94px;
        }
        .style10
        {
            width: 62px;
            height: 94px;
        }
        .style11
        {
            width: 802px;
            height: 94px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 474px; width: 1070px">
        <tr>
            <td class="style17">
            </td>
            <td class="style2" colspan="3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="CHANGE PASSWORD" Font-Names="Calibri" ForeColor="#003366"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style18" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style23" 
                style="font-family: Calibri; font-size: x-large; font-weight: bold">
                <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style23" 
                style="font-family: Calibri; font-size: x-large; font-weight: bold">
                <asp:Label ID="Label5" runat="server" Text="Old Password "></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style24" 
                style="font-family: Calibri; font-size: x-large; font-weight: bold">
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15" 
                style="font-family: Calibri; font-size: medium; font-weight: bold">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px" 
                    ValidationGroup="A"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please write password" 
                    ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
            </td>
            <td class="style28" 
                style="font-family: Calibri; font-size: x-large; font-weight: bold">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password "></asp:Label>
            </td>
            <td class="style27">
            </td>
            <td class="style16" 
                style="font-family: Calibri; font-size: medium; font-weight: bold">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px" 
                    ValidationGroup="A"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please write password" 
                    ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password mismatch" ForeColor="Red" ValidationGroup="A"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style33" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style30" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style31">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" ValidationGroup="A" />
            </td>
            <td class="style32">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Calibri" 
                    Font-Size="Larger" ForeColor="#006600" Text="Label" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                &nbsp;</td>
            <td class="style26" 
                style="font-family: Calibri; font-size: large; font-weight: bold">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

