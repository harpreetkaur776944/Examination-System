<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mainTeacher.aspx.cs" Inherits="mainTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 100%;
        height: 290px;
    }
    .style12
    {
        width: 90px;
    }
    .style13
    {
        width: 386px;
    }
    .style14
    {
        width: 589px;
    }
        .style29
        {
            width: 90px;
            height: 60px;
        }
        .style30
        {
            width: 589px;
            height: 60px;
        }
        .style31
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style31">
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
        <td class="style13" rowspan="7">
            <img src="images/teach1.jpeg" style="width: 301px; height: 185px" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style29" style="clip: rect(3px, 3px, 3px, 3px)">
            </td>
        <td class="style30" style="clip: rect(3px, 3px, 3px, 3px)">
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Set QuestionPaper" Width="200px" 
                onclick="Button1_Click" />
            <br />
        </td>
        <td class="style31">
            </td>
    </tr>
    <tr>
        <td class="style29" style="clip: rect(3px, 3px, 3px, 3px)">
            </td>
        <td class="style31" style="clip: rect(10px, 10px, 10px, 10px);">
            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="View Questions" Width="200px" 
                onclick="Button2_Click" />
            <br />
        </td>
        <td class="style31">
            </td>
    </tr>
    <tr>
        <td class="style29" style="clip: rect(3px, 3px, 3px, 3px)">
            </td>
        <td class="style30" style="clip: rect(3px, 3px, 3px, 3px)">
            <asp:Button ID="Button5" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Change Password" Width="200px" 
                onclick="Button5_Click" />
            <br />
        </td>
        <td class="style31">
            </td>
    </tr>
    <tr>
        <td class="style29" style="clip: rect(3px, 3px, 3px, 3px)">
            </td>
        <td class="style30" style="clip: rect(3px, 3px, 3px, 3px)">
            <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderColor="White" 
                BorderStyle="Ridge" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
                ForeColor="#FFFFCC" Height="38px" Text="Logout" Width="200px" 
                onclick="Button3_Click" />
        </td>
        <td class="style31">
            </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

