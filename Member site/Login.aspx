<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Member_site_Login" Title="Untitled Page" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
    {
        width: 7px;
    }
    .style7
    {
        width: 323px;
    }
        .style10
        {
            height: 24px;
        }
        .style11
        {
            width: 80px;
        }
        .style12
    {
        width: 152px;
    }
    .style13
    {
        width: 80px;
        height: 60px;
    }
    .style14
    {
        width: 152px;
        height: 60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 730px">
    <table style="width:100%;" align="left">
        <tr>
            <td class="style10" align="left" bgcolor="#99CCFF" colspan="2" valign="top">
                <asp:Label ID="Label7" runat="server" Text="Member Login." Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style6" align="left" valign="top">
                <Bewise:FlashControl ID="FlashControl4" runat="server" Height="207px" 
                    MovieUrl="~/Member site/flash/B 2.swf" Width="219px" />
            </td>
            <td class="style7">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Double" 
                    Height="203px" Width="231px">
                    <table style="border-style: outset; border-width: thin; width: 153%; height: 218px;">
                        <tr>
                            <td bgcolor="#99CCFF" class="style10" colspan="2">
                                <asp:Label ID="Label6" runat="server" BorderColor="Red" BorderStyle="None" 
                                    Font-Bold="True" Font-Names="Times New Roman" ForeColor="Black" 
                                    Text="Login..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="style13">
                                &nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="User"></asp:Label>
                                &nbsp;</td>
                            <td valign="top" align="left" class="style14">
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 18px" 
                                    Width="213px"></asp:TextBox>
                                <asp:Label ID="Label8" runat="server" Font-Size="Smaller" ForeColor="#990000" 
                                    Text="."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style11" align="right">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td valign="top" class="style12">
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 18px" 
                                    Width="210px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td valign="top" class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
                                    BackColor="Silver" Font-Underline="False" ForeColor="Black">Login</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
                                    BackColor="Silver" Font-Underline="False" ForeColor="Black">Cancel</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#99CCFF" colspan="2" style="color: #FFFFFF;" valign="top">
                                <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
                                    ForeColor="Black">Are 
                                You New Member Visit Member Registation Page</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
                            </td>
        </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</asp:Content>

