<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="FinalResult.aspx.cs" Inherits="FinalResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style24
        {
            height: 67px;
            width: 738px;
        }
        .style22
        {
            width: 853px;
            height: 67px;
        }
        .style20
        {
            width: 118px;
            height: 67px;
        }
        .style25
        {
            height: 24px;
            width: 738px;
        }
        .style15
        {
            width: 853px;
            height: 24px;
        }
        .style13
        {
            width: 118px;
            height: 24px;
        }
        .style26
        {
            width: 738px;
        }
        .style11
        {
            width: 145px;
        }
        .style12
        {
            width: 118px;
        }
        .style9
        {
            width: 100%;
        }
        .style27
        {
            height: 67px;
            width: 82px;
        }
        .style28
        {
            height: 24px;
            width: 82px;
        }
        .style29
        {
            width: 82px;
        }
        .style30
        {
            height: 98px;
            width: 82px;
        }
        .style31
        {
            height: 98px;
            width: 738px;
        }
        .style32
        {
            width: 1003px;
            height: 276px;
        }
        .style33
        {
            width: 118px;
            height: 98px;
        }
        .style34
        {
            width: 853px;
            height: 276px;
        }
        .style35
        {
            width: 853px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style32">
        <tr>
            <td class="style27" 
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                &nbsp;</td>
            <td class="style24" 
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style22" 
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style21" rowspan="4">
                <img src="images/result.jpg" style="height: 200px" /></td>
        </tr>
        <tr>
            <td class="style30" 
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
            </td>
            <td class="style31" 
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Your Score Is -"></asp:Label>
            </td>
            <td class="style34" 
                
                style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                <asp:Label ID="Label7" runat="server" ForeColor="#006600" Text="Marks"></asp:Label>
            </td>
            <td class="style33">
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style25">
            </td>
            <td class="style15">
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td class="style26">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
            </td>
            <td class="style35">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

