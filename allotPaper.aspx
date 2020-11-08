<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="allotPaper.aspx.cs" Inherits="allotPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 63px;
        }
        .style12
        {
            width: 6%;
        }
        .style14
        {
            width: 16%;
        }
        .style17
        {
            height: 32px;
            width: 54px;
        }
        .style19
        {
            width: 394px;
        }
        .style20
        {
            width: 54px;
        }
        .style21
        {
            width: 6%;
            height: 63px;
        }
        .style23
        {
            width: 16%;
            height: 45px;
        }
        .style25
        {
            width: 394px;
            height: 45px;
        }
        .style26
        {
            height: 45px;
            width: 54px;
        }
        .style27
        {
            width: 6%;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1" style="width: 999px; height: 384px;">
            <tr>
                <td class="style21">
                </td>
                <td class="style9" colspan="3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="ALLOT PAPERCODE" ForeColor="#003366"></asp:Label>
                </td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style12">
                    </td>
                <td class="style14">
                    </td>
                <td class="style20">
                    </td>
                <td class="style19">
                    </td>
                <td class="style5" rowspan="6">
                    <img src="images/admin.png" style="height: 286px" /></td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:Label ID="Label1" runat="server" Text="Student UserID" Font-Bold="True"></asp:Label>
                </td>
                <td class="style17" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    &nbsp;</td>
                <td class="style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataTextField="regId" Height="30px" Width="150px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    </td>
                <td class="style14" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    </td>
                <td class="style20" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    </td>
                <td class="style19">
                    </td>
            </tr>
            <tr>
                <td class="style27">
                </td>
                <td class="style23" 
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    <asp:Label ID="Label2" runat="server" Text="Papercode"></asp:Label>
                </td>
                <td class="style26" 
                    
                    style="font-family: Calibri; font-size: x-large; font-weight: bold; color: #003366;">
                    </td>
                <td class="style25">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataTextField="papercode" Height="30px" Width="150px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                </td>
                <td class="style14">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-top: 0px" />
                </td>
                <td class="style20">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;&nbsp;&nbsp; <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                </td>
                <td class="style20">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                </td>
                <td class="style19">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

