<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mainStudent.aspx.cs" Inherits="mainStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 542px;
            height: 504px;
        }
        .style10
        {
            width: 65px;
        }
        .style13
        {
            width: 81%;
            height: 423px;
            margin-left: 0px;
        }
        .style14
        {
            width: 197px;
            height: 66px;
        }
        .style15
        {
            width: 298px;
            height: 66px;
        }
        .style17
        {
            height: 54px;
        }
        .style20
        {
            width: 654px;
        }
        .style21
        {
            width: 197px;
            height: 74px;
        }
        .style22
        {
            width: 298px;
            height: 74px;
        }
        .style23
        {
            width: 197px;
            height: 79px;
        }
        .style24
        {
            width: 298px;
            height: 79px;
        }
        .style25
        {
            width: 197px;
            height: 48px;
        }
        .style26
        {
            width: 298px;
            height: 48px;
        }
        .style27
        {
            width: 197px;
            height: 62px;
        }
        .style28
        {
            width: 298px;
            height: 62px;
        }
        .style29
        {
            width: 472px;
        }
        .style31
        {
            height: 50px;
            width: 187px;
        }
        .style32
        {
            height: 32px;
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style13">
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style29">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td colspan="3" rowspan="3">
                <table class="style13">
                    <tr>
                        <td colspan="2" style="font-family: Calibri; font-size: large; color: #336699" 
                            class="style17">
                            WELCOME&nbsp;
                            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14" 
                            style="font-family: Calibri; font-size: large; color: #336699">
                            <asp:Label ID="Label2" runat="server" Text="Registration ID"></asp:Label>
                        </td>
                        <td class="style15" 
                            style="font-family: Calibri; font-size: large; color: #336699">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Attempt Paper" Width="176px" 
                onclick="Button1_Click" />
                            <br />
                        </td>
                        <td class="style22">
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Label" Font-Names="Calibri" 
                                ForeColor="Red" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="View Result" Width="176px" 
                onclick="Button2_Click" />
                        </td>
                        <td class="style28">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
            <asp:Button ID="Button4" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Change Password " Width="176px" 
                onclick="Button4_Click" />
                        </td>
                        <td class="style24">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style25">
            <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Logout" Width="176px" 
                onclick="Button3_Click" />
                        </td>
                        <td class="style26">
                            </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
            <td rowspan="3" class="style11" dir="rtl">
                &nbsp;<img src="images/student.png" 
                    style="height: 225px; width: 254px" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                </td>
        </tr>
        </table>

</asp:Content>

