<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="MemberPayment.aspx.cs" Inherits="Admin_MemberPayment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" bgcolor="#99CCFF">
                <asp:Label ID="Label1" runat="server" Text="Member Payments"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="44px" Height="21px"></asp:TextBox>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="180px">
                </asp:DropDownList>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">find</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Payment Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="150px">
                    <asp:ListItem>Deposit</asp:ListItem>
                    <asp:ListItem>Yearly Payment</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Paiddate"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="Due Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Text="Note"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="168px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Conform</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server">Cancel</asp:LinkButton>
            </td>
        </tr>
        </table>
</asp:Content>

