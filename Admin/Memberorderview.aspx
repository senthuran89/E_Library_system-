<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="Memberorderview.aspx.cs" Inherits="Admin_Memberorderview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style3
        {
            height: 23px;
        }
        .style4
        {
            height: 179px;
        }
        .style5
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style5" bgcolor="#99CCFF">
                    <asp:Label ID="Label1" runat="server" Text="View Members Order"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT * FROM [bookorderadminview]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT [Orderid], [Orderdate], [Memberid], [Bookid1], [Username], [Firstname] FROM [bookorderadminview]">
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="3" DataKeyNames="Orderid" DataSourceID="SqlDataSource2" 
                        GridLines="None" Width="660px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellSpacing="1">
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="Orderid" HeaderText="Orderid" 
                                SortExpression="Orderid" ReadOnly="True" />
                            <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" 
                                SortExpression="Orderdate" />
                            <asp:BoundField DataField="Memberid" HeaderText="Memberid" 
                                SortExpression="Memberid" />
                            <asp:BoundField DataField="Bookid1" HeaderText="Bookid1" 
                                SortExpression="Bookid1" />
                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                SortExpression="Username" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:CommandField ButtonType="Button" SelectText="Check This Order" 
                                ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" 
                            HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
    </p>
</asp:Content>

