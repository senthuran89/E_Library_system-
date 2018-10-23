<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="lendpage.aspx.cs" Inherits="Admin_lendpage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {}
        .style4
        {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" bgcolor="#99CCFF">
                <asp:Label ID="Label1" runat="server" Text="Lending..."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    Width="516px" AllowPaging="True">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Orderid" HeaderText="Orderid" 
                            SortExpression="Orderid" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Memberid" HeaderText="Memberid" 
                            SortExpression="Memberid" />
                        <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" 
                            SortExpression="Orderdate" />
                        <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                            SortExpression="Bookname" />
                        <asp:BoundField DataField="Bookid1" HeaderText="Bookid1" 
                            SortExpression="Bookid1" />
                        <asp:CommandField ButtonType="Button" />
                        <asp:CommandField SelectText="Show details" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#99CCFF" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Orderid], [Username], [Memberid], [Orderdate], [Bookname], [Bookid1] FROM [orderlendview] WHERE ([Memberid] = @Memberid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="mid1" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Order No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="52px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Get Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Sample Return  Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="Note"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Conform</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Show 
                Details</asp:LinkButton>
            </td>
        </tr>
        </table>
</asp:Content>

