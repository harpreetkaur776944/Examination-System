<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="finishExam.aspx.cs" Inherits="finishExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 637px;
            height: 516px;
        }
        .style10
        {
            width: 81px;
        }
        .style11
        {
            width: 294px;
        }
        .style12
        {
            width: 81px;
            height: 86px;
        }
        .style13
        {
            width: 294px;
            height: 86px;
        }
        .style14
        {}
        .style15
        {
            width: 306px;
        }
        .style16
        {
            height: 86px;
            width: 306px;
        }
        .style20
        {
            height: 178px;
        }
        .style21
        {
            width: 81px;
            height: 178px;
        }
        .style22
        {
            width: 294px;
            height: 178px;
        }
        .style23
        {
            height: 846px;
            width: 986px;
            margin-right: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style23">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style13" 
                style="font-family: Calibri; font-size: x-large; color: #006699">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="ExamFinished"></asp:Label>
            </td>
            <td class="style16" 
                style="font-family: Calibri; font-size: x-large; color: #006699">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td rowspan="4" 
                style="font-family: Calibri; font-size: x-large; color: #006699">
                <img src="images/done.jpg" style="height: 227px; width: 308px" /></td>
            <td class="style14" rowspan="4" 
                style="font-family: Calibri; font-size: x-large; color: #006699">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View Result" 
                        Width="187px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="33px" 
                        style="margin-top: 0px" />
                    </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                        Width="118px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
                    </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
            </td>
            <td class="style22">
            </td>
            <td class="style23">
            </td>
            <td class="style11">
            </td>
            <td class="style20">
            </td>
        </tr>
    </table>
</asp:Content>

