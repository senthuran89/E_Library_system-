<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="Memberreturn.aspx.cs" Inherits="Admin_Memberreturn" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4" bgcolor="#0099FF">
                <asp:Label ID="Label1" runat="server" Text="Member Return"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Member User Name "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="157px">
                </asp:DropDownList>
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Go 
                To</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click1">Go To</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

