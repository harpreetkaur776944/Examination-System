<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="papercode.aspx.cs" Inherits="papercode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 1626px;
    }
    .style12
    {
        width: 806px;
    }
    .style18
    {
    }
    .style20
    {
        width: 399px;
    }
    .style21
    {
        width: 139px;
    }
    .style22
    {
        width: 318px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" bgcolor="White" style="height: 163px; width: 1076px">
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style18" bgcolor="White" colspan="3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="CREATE PAPERCODE" ForeColor="#003366"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style12" rowspan="5">
                        <br />
                        <img src="images/admin.png" style="height: 302px" /></td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style20" 
                        style="font-family: Calibri; font-size: large; font-weight: bold; color: #003366;">
                        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
                            style="margin-bottom: 0px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style20" 
                        style="font-family: Calibri; font-size: large; font-weight: bold; color: #003366;">
                        <asp:Label ID="Label2" runat="server" Text="PaperCode"></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style20" 
                        style="font-family: Calibri; font-size: large; font-weight: bold; color: #003366;">
                        <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style20">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                            Width="72px" BackColor="#003366" BorderColor="White" BorderStyle="Ridge" 
                            Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="White" />
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" 
                            Width="72px" BackColor="#003366" BorderColor="White" BorderStyle="Ridge" 
                            Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="White" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
                            Width="72px" BackColor="#003366" BorderColor="White" BorderStyle="Ridge" 
                            Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                            ForeColor="White" />
                    &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
</asp:Content>

