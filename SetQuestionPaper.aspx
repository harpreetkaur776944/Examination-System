<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SetQuestionPaper.aspx.cs" Inherits="SetQuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 815px;
    }
    .style10
    {
        width: 224px;
    }
    .style11
    {
        width: 94px;
    }
    .style12
    {
        width: 94px;
        height: 85px;
    }
    .style13
    {
        height: 85px;
    }
    .style14
    {
        width: 224px;
        height: 85px;
    }
    .style15
    {
        width: 815px;
        height: 85px;
    }
    .style16
    {
        width: 94px;
        height: 26px;
    }
    .style18
    {
        width: 224px;
        height: 26px;
    }
    .style19
    {
        width: 815px;
        height: 26px;
    }
    .style20
    {
        height: 26px;
    }
    .style21
    {
        width: 94px;
        height: 43px;
    }
    .style22
    {
        height: 43px;
    }
    .style23
    {
        width: 224px;
        height: 43px;
    }
    .style24
    {
        width: 815px;
        height: 43px;
    }
    .style25
    {
        width: 94px;
        height: 42px;
    }
    .style26
    {
        height: 42px;
    }
    .style27
    {
        width: 815px;
        height: 42px;
    }
    .style30
    {
        width: 224px;
        height: 42px;
    }
    .style31
    {
        width: 94px;
        height: 36px;
    }
    .style33
    {
        width: 224px;
        height: 36px;
    }
    .style34
    {
        width: 815px;
        height: 36px;
    }
    .style35
    {
        height: 36px;
    }
    .style36
    {
        width: 103px;
        height: 43px;
    }
    .style37
    {
        width: 103px;
        height: 42px;
    }
    .style38
    {
        width: 103px;
        height: 36px;
    }
    .style39
    {
        width: 103px;
    }
    .style40
    {
        width: 103px;
        height: 26px;
    }
    .style41
    {
        width: 103px;
        height: 85px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" cellpadding="5" cellspacing="5" 
    style="font-family: Calibri; font-size: medium; font-weight: bold; color: #003366">
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td colspan="3">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style25">
                    </td>
                    <td class="style26">
                        <asp:Label ID="Label1" runat="server" Text="PaperSet"></asp:Label>
                    </td>
                    <td colspan="3" class="style26">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="papercode" 
                            Height="25px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                            Width="120px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="style27">
                        </td>
                </tr>
                <tr>
                    <td class="style21">
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label2" runat="server" Text="QuestionNo"></asp:Label>
                    </td>
                    <td colspan="3" class="style22">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Height="25px" 
                            Width="150px"></asp:TextBox>
                    </td>
                    <td class="style24">
                        </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Question"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="540px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label4" runat="server" Text="OptionA"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style22">
                        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                    <td class="style23">
                    </td>
                    <td class="style36">
                        <asp:Label ID="Label7" runat="server" Text="OptionB"></asp:Label>
                    </td>
                    <td class="style24">
                        <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style25">
                    </td>
                    <td class="style26">
                        <asp:Label ID="Label5" runat="server" Text="OptionC"></asp:Label>
                    </td>
                    <td class="style26">
                        <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                    <td class="style30">
                    </td>
                    <td class="style37">
                        <asp:Label ID="Label8" runat="server" Text="OptionD"></asp:Label>
                    </td>
                    <td class="style27">
                        <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                    </td>
                    <td class="style35">
                        <asp:Label ID="Label6" runat="server" Text="Answer"></asp:Label>
                    </td>
                    <td class="style35">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            Height="25px" Width="120px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style33">
                        </td>
                    <td class="style38">
                        </td>
                    <td class="style34">
                        </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style39">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="style10">
                        <br />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                    </td>
                    <td class="style39">
                        &nbsp;</td>
                    <td class="style9">
                        <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        </td>
                    <td class="style20">
                        </td>
                    <td class="style20">
                        </td>
                    <td class="style18">
                        </td>
                    <td class="style40">
                        </td>
                    <td class="style19">
                        </td>
                </tr>
                <tr>
                    <td class="style12">
                        </td>
                    <td class="style13">
                        </td>
                    <td class="style13">
                        </td>
                    <td class="style14">
                        </td>
                    <td class="style41">
                        </td>
                    <td class="style15">
                        </td>
                </tr>
            </table>
</asp:Content>

