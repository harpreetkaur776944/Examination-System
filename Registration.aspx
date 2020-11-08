<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 100%;
    }
    .style11
    {
        height: 45px;
    }
    .style9
    {
        width: 160px;
    }
    .style6
    {
        width: 692px;
    }
    .style10
    {
        height: 32px;
        width: 160px;
    }
    .style13
    {
        width: 908px;
    }
    .style14
    {
        width: 908px;
        height: 340px;
    }
    .style15
    {
        height: 340px;
    }
        .style3
        {
        width: 281px;
    }
        .style2
        {
            height: 23px;
        width: 322px;
    }
        .style16
    {
        width: 281px;
        height: 33px;
    }
    .style17
    {
        width: 322px;
    }
    .style18
    {
        width: 692px;
        height: 32px;
    }
    .style19
    {
        width: 91px;
    }
    .style20
    {
        height: 32px;
        width: 91px;
    }
        .style21
        {
            width: 886px;
        }
        .style22
        {
            width: 886px;
            height: 32px;
        }
        .style23
        {
            width: 224px;
        }
        .style24
        {}
        .style25
        {
            width: 47px;
        }
        .style28
        {
            width: 50px;
        }
        .style29
        {
        }
        .style30
        {
            width: 51px;
        }
        .style31
        {
            width: 224px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style12">
    <tr>
        <td class="style14">

<table class="style1" style="width: 853px; height: 404px">
        <tr>
            <td colspan="3" class="style11" 
                style="font-family: Calibri; font-size: large; font-style: normal; color: #003399">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="REGISTRATION FORM"></asp:Label>
                <br />
            </td>
            <td class="style11" 
                
                style="font-family: Calibri; font-size: large; font-style: normal; color: #003399">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="* Enter Name" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label2" runat="server" Text="FATHER NAME"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="* Enter Father's Name" 
                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label3" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="* Enter Address" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label4" runat="server" Text="CONTACT NUMBER"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="* Enter Contact Num" 
                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label7" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="* Enter email" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="* Invalid" Font-Bold="True" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" style="font-family: Calibri">
                DATE OF BIRTH</td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <table class="style12">
                    <tr>
                        <td class="style24">
                            DATE:</td>
                        <td class="style25">
                            <asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
                        </td>
                        <td class="style28">
                            MONTH:</td>
                        <td class="style30">
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                Width="59px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            YEAR:</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" style="margin-bottom: 0px" 
                                Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24" colspan="2">
                            <asp:Label ID="Label14" runat="server" ForeColor="#006600" Text="Label" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="* DATE" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style29" colspan="2">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*Invalid Date" Font-Bold="True" 
                                ForeColor="Red" MaximumValue="31" MinimumValue="1"></asp:RangeValidator>
                        </td>
                        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="* YEAR" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label5" runat="server" Text="COURSE"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100px">
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MCom</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                <asp:Label ID="Label6" runat="server" Text="SEMESTER"></asp:Label>
            </td>
            <td class="style19" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="100px">
                    <asp:ListItem>Sem1</asp:ListItem>
                    <asp:ListItem>Sem2</asp:ListItem>
                    <asp:ListItem>Sem3</asp:ListItem>
                    <asp:ListItem>Sem4</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style20" style="font-family: Calibri">
                &nbsp;</td>
            <td class="style21" style="font-family: Calibri">
            </td>
            <td class="style6" style="font-family: Calibri">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31" style="font-family: Calibri">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Register" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-top: 0px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style20" style="font-family: Calibri">
            </td>
            <td class="style22" style="font-family: Calibri">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="New" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-top: 0px" />
                <br />
            </td>
            <td class="style18" style="font-family: Calibri">
                    &nbsp;</td>
        </tr>
    </table>

        </td>
        <td class="style15">
            <img src="images/Register.jpg" style="height: 197px" /></td>
        <td class="style15">
            &nbsp;</td>
        <td>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:Panel ID="Panel1" runat="server" Visible="False" Width="922px">
                <table class="style1">
                    <tr>
                        <td class="style3" style="font-family: Calibri">
                            <br />
                            <asp:Label ID="Label11" runat="server" 
                Text="RegistrationID"></asp:Label>
                        </td>
                        <td class="style17" style="font-family: Calibri">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                ForeColor="#339933" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16" style="font-family: Calibri">
                            <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="style2" style="font-family: Calibri">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                ForeColor="#339933" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
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

