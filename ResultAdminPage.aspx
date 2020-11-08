<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ResultAdminPage.aspx.cs" Inherits="ResultAdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
            height: 502px;
        }
        .style13
        {
            width: 81px;
        }
        .style14
        {
            width: 81px;
            height: 204px;
        }
        .style15
        {
            height: 204px;
        }
        .style16
        {
            width: 81px;
            height: 223px;
        }
        .style18
        {
            height: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style12">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15">
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                    BorderColor="Black" BorderStyle="Ridge" Font-Names="Calibri" ForeColor="Black" 
                    Height="148px" Width="419px">
                    <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                </asp:GridView>
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#003366" Font-Bold="False" 
                        Font-Names="Calibri" Font-Size="X-Large" ForeColor="White" Height="32px" 
                        onclick="Button2_Click" style="margin-top: 0px" Text="Back" 
                    Width="100px" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
            </td>
            <td class="style18">
            </td>
            <td class="style18">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

