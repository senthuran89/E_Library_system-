<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="memberLending.aspx.cs" Inherits="Admin_memberLending" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 38%;
    }
    .style5
    {
        width: 197px;
    }
    .style6
    {
        width: 13%;
    }
    .style7
    {
        width: 23%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4" bgcolor="#0099FF">
                <asp:Label ID="Label1" runat="server" Text="Member lending"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Member User Name "></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="157px">
                </asp:DropDownList>
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Go 
                To</asp:LinkButton>
            </td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Go To</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

