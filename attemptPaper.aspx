<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="attemptPaper.aspx.cs" Inherits="attemptPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 47px;
        }
        .style10
        {
            height: 32px;
            width: 423px;
        }
        .style11
        {
            height: 47px;
            width: 61px;
        }
        .style12
        {
            width: 61px;
        }
        .style15
        {
            height: 18px;
        }
        .style16
        {
            height: 32px;
            width: 61px;
        }
        .style19
        {
            height: 23px;
            width: 423px;
        }
        .style20
        {
            width: 61px;
            height: 23px;
        }
        .style21
        {
            height: 23px;
            width: 239px;
        }
        .style33
        {
            height: 50px;
            width: 61px;
        }
        .style34
        {
            height: 50px;
            width: 239px;
        }
        .style37
        {
            height: 33px;
            width: 423px;
        }
        .style38
        {
            height: 33px;
            width: 61px;
        }
        .style39
        {
            height: 33px;
            width: 239px;
        }
        .style40
        {
            width: 239px;
        }
        .style41
        {
            height: 32px;
            width: 239px;
        }
        .style42
        {
            width: 61px;
            height: 18px;
        }
        .style43
        {
            width: 734px;
            height: 59px;
        }
        .style44
        {
            width: 100%;
        }
        .style45
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table><tr><td class="style43">
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Panel ID="Panel3" runat="server" Visible="False">
          &nbsp;&nbsp;
          <table class="style44">
              <tr>
                  <td class="style45">
                      &nbsp;</td>
                  <td class="style45">
                      <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Calibri" 
                          Font-Size="X-Large" ForeColor="Red" Text="Not alloted yet!!"></asp:Label>
                  </td>
                  <td class="style45">
                      <asp:Button ID="Button2" runat="server" BackColor="#003366" Font-Bold="False" 
                          Font-Names="Calibri" Font-Size="X-Large" ForeColor="White" Height="32px" 
                          onclick="Button2_Click" style="margin-top: 0px" Text="Back" Width="100px" />
                  </td>
              </tr>
          </table>
          &nbsp;</asp:Panel>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      </td></tr></table>
    <asp:Panel ID="Panel2" runat="server">
        <table class="style1" style="height: 568px; width: 1079px">
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style9" colspan="2" style="font-family: Calibri; font-size: large">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="ATTEMPT PAPER" ForeColor="#336699"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style42">
                </td>
                <td class="style15" colspan="2" style="font-family: Calibri; font-size: large">
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style40" style="font-family: Calibri; font-size: large">
                    NAME</td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                </td>
                <td class="style21" style="font-family: Calibri; font-size: large">
                </td>
                <td class="style19" style="font-family: Calibri; font-size: large">
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style40" style="font-family: Calibri; font-size: large">
                    <asp:Label ID="Label4" runat="server" Text="Question No"></asp:Label>
                </td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style41" style="font-family: Calibri; font-size: large">
                    <asp:Label ID="Label5" runat="server" Text="Question"></asp:Label>
                </td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" TextMode="MultiLine" 
                    Width="713px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style40" style="font-family: Calibri; font-size: large">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="options" />
                </td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="options" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style41" style="font-family: Calibri; font-size: large">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="options" />
                </td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="options" />
                </td>
            </tr>
            <tr>
                <td class="style38">
                </td>
                <td class="style39" style="font-family: Calibri; font-size: large">
                </td>
                <td class="style37" style="font-family: Calibri; font-size: large">
                </td>
            </tr>
            <tr>
                <td class="style33">
                </td>
                <td class="style34">
                </td>
                <td class="style10" style="font-family: Calibri; font-size: large">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="100px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="32px" 
                        style="margin-top: 0px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:Panel ID="Panel1" runat="server" Height="37px" style="margin-bottom: 1px" 
                    Visible="False" Width="564px">
                        <asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
                        style="margin-right: 0px"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Papercode"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br /><br />
    </asp:Content>

