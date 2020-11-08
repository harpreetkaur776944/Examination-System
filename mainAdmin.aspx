<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mainAdmin.aspx.cs" Inherits="mainAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
    {
        width: 724px;
            height: 355px;
        }
    .style8
    {
        width: 494px;
    }
        .style10
        {
            width: 494px;
            height: 42px;
        }
        .style12
        {
            width: 763px;
        }
        .style13
        {
        width: 1323px;
    }
    .style14
    {
        width: 494px;
        height: 24px;
    }
    .style16
    {
        width: 1323px;
        height: 24px;
    }
        .style17
        {
            width: 494px;
            height: 32px;
        }
        .style18
        {
            width: 1323px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style6">
    <tr>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style13">
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Set Papercode" Width="200px" 
                onclick="Button1_Click" />
        </td>
        <td rowspan="7" class="style12">
            <img src="images/admin.png" style="margin-left: 316px"  /></td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style13">
            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Allot Paper" Width="200px" 
                onclick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style13">
            <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Registered Students" 
                Width="200px" onclick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style13">
            <asp:Button ID="Button4" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Result" Width="200px" 
                onclick="Button4_Click" />
        </td>
    </tr>
    <tr>
        <td class="style14">
            </td>
        <td class="style16">
            <asp:Button ID="Button5" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Change Password" Width="200px" 
                onclick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style13">
            <asp:Button ID="Button6" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="35px" Text="Logout" Width="200px" 
                onclick="Button6_Click" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style13">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>

</asp:Content>

