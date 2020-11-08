<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewQuestions.aspx.cs" Inherits="ViewQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
        }
        .style10
        {
            width: 91px;
        }
        .style11
        {
            width: 9px;
        }
        .style14
        {
            height: 21px;
        }
        .style15
        {
            width: 284px;
        }
        .style16
        {
            width: 284px;
            height: 21px;
        }
        .style17
        {
            width: 253px;
        }
        .style18
        {
            width: 253px;
            height: 21px;
        }
        .style19
        {
            width: 286px;
        }
        .style20
        {
            width: 286px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <br />
        <table class="style9">
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11" rowspan="5">
                    <br />
    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Height="258px" Width="748px" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" >
                         <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <Columns>
                               
                            <asp:TemplateField HeaderText="Papercode">
                                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                                <ItemTemplate>
                <asp:Label ID="l1" Text=<%# Eval("paperset") %> runat="server"></asp:Label>
                </ItemTemplate>

                <EditItemTemplate>
                <asp:Label ID="l9" Text=<%# Eval("paperset") %> runat="server"></asp:Label>
                </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="QuesNum">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l2" Text=<%# Eval("quesNo") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:Label ID="l10" Text=<%# Eval("quesNo") %> runat="server"></asp:Label>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Question">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l3" Text=<%# Eval("question") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="t2" Text=<%# Eval("question") %> runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionA">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l4" Text=<%# Eval("op1") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="t3" Text=<%# Eval("op1") %> runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionB">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                  <ItemTemplate>
                <asp:Label ID="l5" Text=<%# Eval("op2") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="t4" Text=<%# Eval("op2") %> runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionC">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l6" Text=<%# Eval("op3") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="t5" Text=<%# Eval("op3") %> runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionD">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l7" Text=<%# Eval("op4") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="t6" Text=<%# Eval("op4") %> runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Answer">
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemTemplate>
                <asp:Label ID="l8" Text=<%# Eval("answer") %> runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:DropDownList ID="d1"  DataSourceID="SqlDataSource2"  DataTextField="op" DataValueField="op" runat="server"></asp:DropDownList>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" HeaderText="EDIT" ShowEditButton="True">
                <ControlStyle BackColor="#003366" Font-Names="Calibri" Font-Size="Large" 
                    ForeColor="White" Height="28px" Width="100px" />
                <HeaderStyle BackColor="#003366" Font-Names="Calibri" ForeColor="White" />
                <ItemStyle Font-Names="Calibri" Font-Size="Medium" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table class="style9">
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style20">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                    </td>
                <td class="style16">
&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
                        Width="114px" Font-Bold="False" Font-Names="Calibri" Font-Size="X-Large" 
                        BackColor="#003366" ForeColor="White" Height="35px" 
                        style="margin-bottom: 13px" />
                    </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:stuConnectionString %>" 
            SelectCommand="SELECT * FROM [question]"></asp:SqlDataSource>
    
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="op" DataValueField="op">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:stuConnectionString2 %>" 
                SelectCommand="SELECT * FROM [options]"></asp:SqlDataSource>
            <br />
            <br />
        </asp:Panel>
    
    </div>
</asp:Content>

