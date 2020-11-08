<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="viewResult.aspx.cs" Inherits="viewResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 788px;
            height: 711px;
        }
        .style10
        {}
        .style11
        {
            width: 145px;
        }
        .style13
        {
            width: 795px;
            height: 25px;
        }
        .style15
        {
            width: 118px;
            height: 25px;
        }
        .style20
        {
            width: 795px;
            height: 67px;
        }
        .style22
        {
            width: 118px;
            height: 67px;
        }
        .style24
        {
            height: 67px;
            width: 1285px;
        }
        .style25
        {
            height: 25px;
            width: 1285px;
        }
        .style28
        {
            width: 417px;
            height: 67px;
        }
        .style29
        {
            width: 417px;
            height: 25px;
        }
        .style30
        {
            width: 417px;
        }
        .style38
        {
            width: 1055px;
            height: 1121px;
            margin-top: 0px;
        }
        .style40
        {
            height: 32px;
            width: 581px;
        }
        .style42
        {
            width: 581px;
        }
        .style44
        {
            width: 417px;
            height: 35px;
        }
        .style45
        {
            height: 35px;
            width: 1285px;
        }
        .style46
        {
            width: 118px;
            height: 35px;
        }
        .style47
        {
            width: 795px;
            height: 35px;
        }
        .style48
        {
            height: 35px;
            width: 581px;
        }
        .style51
        {
            width: 118px;
            height: 32px;
        }
        .style52
        {
            width: 795px;
        }
        .style53
        {
            height: 32px;
            width: 337px;
        }
        .style57
        {
            height: 17px;
        }
        .style58
        {
            width: 417px;
            height: 17px;
        }
        .style59
        {
            width: 1043px;
        }
        .style60
        {
            width: 100%;
        }
        .style65
        {
            width: 107px;
        }
        .style66
        {
            width: 599px;
        }
        .style67
        {
            width: 107px;
            height: 43px;
        }
        .style68
        {
            width: 599px;
            height: 43px;
        }
        .style69
        {
            height: 43px;
        }
        .style70
        {
            width: 1043px;
            height: 57px;
        }
        .style71
        {
            width: 417px;
            height: 217px;
        }
        .style72
        {
            width: 795px;
            height: 217px;
        }
        .style73
        {
            width: 581px;
            height: 217px;
        }
        .style74
        {
            width: 1285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table><tr><td class="style59"></td></tr><tr><td class="style70">
    <asp:Panel ID="Panel3" runat="server" Height="103px" Visible="False" 
        Width="1038px">
        <table class="style60">
            <tr>
                <td class="style67">
                </td>
                <td class="style68">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="XX-Large" ForeColor="Red" Text="Not Attempted yet"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style69">
                    <asp:Button ID="Button2" runat="server" BackColor="#003366" Font-Bold="False" 
                        Font-Names="Calibri" Font-Size="X-Large" ForeColor="White" Height="32px" 
                        onclick="Button2_Click" style="margin-top: 0px" Text="Back" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="style65">
                    &nbsp;</td>
                <td class="style66">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

        </table>
    </asp:Panel><br />

    </td></tr><tr><td class="style59">
        <asp:Panel ID="Panel2" runat="server">
            <table class="style38">
                <tr>
                    <td class="style58">
                    </td>
                    <td class="style57" colspan="4">
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                    </td>
                    <td class="style24" 
                
                
                        style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Your Score Is -"></asp:Label>
                    </td>
                    <td class="style22" 
                
                
                        style="font-family: Calibri; font-size: xx-large; font-weight: bold; font-style: normal; color: #003366">
                        <asp:Label ID="Label7" runat="server" ForeColor="#006600" Text="Marks"></asp:Label>
                    </td>
                    <td class="style20">
                    </td>
                    <td class="style42" rowspan="3">
                        <img src="images/result.jpg" style="height: 200px" />
                    </td>
                </tr>
                <tr>
                    <td class="style29">
                    </td>
                    <td class="style25">
                    </td>
                    <td class="style15">
                    </td>
                    <td class="style13">
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        &nbsp;</td>
                    <td class="style74">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
                    </td>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style52">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                        &nbsp;</td>
                    <td class="style74">
                        &nbsp;</td>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style52">
                        &nbsp;</td>
                    <td class="style40">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                        &nbsp;</td>
                    <td class="style74">
                        &nbsp;</td>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style52">
                        &nbsp;</td>
                    <td class="style40">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                    </td>
                    <td class="style53" colspan="2" rowspan="2">
                        <asp:Panel ID="Panel1" runat="server" Height="306px" 
                    Width="402px" Visible="False">
                            <table class="style1" style="height: 270px; width: 373px">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="userId"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="question No"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="papercode"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" 
                Text="attemptAnswer"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" 
                Text="CorrectAnswer"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td class="style52">
                        &nbsp;</td>
                    <td class="style40">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style71">
                        </td>
                    <td class="style72">
                        </td>
                    <td class="style73">
                        </td>
                </tr>
                <tr>
                    <td class="style44">
                    </td>
                    <td class="style45">
                    </td>
                    <td class="style46">
                    </td>
                    <td class="style47">
                    </td>
                    <td class="style48">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        </td></tr></table>
    
</asp:Content>

