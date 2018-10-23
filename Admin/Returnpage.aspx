<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="Returnpage.aspx.cs" Inherits="Admin_Returnpage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 157px;
        }
        .style4
        {
            width: 157px;
            height: 21px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 157px;
            height: 7px;
        }
        .style7
        {
            height: 7px;
        }
        .style8
        {
            width: 157px;
        }
        .style9
        {
            width: 157px;
            height: 2px;
        }
        .style10
        {
            height: 2px;
        }
        .style11
        {
            width: 157px;
            height: 5px;
        }
        .style12
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" bgcolor="#99CCFF">
                <asp:Label ID="Label1" runat="server" Text="Member Return"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Orderid" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="521px" 
                    AllowPaging="True">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Orderid" HeaderText="Orderid" ReadOnly="True" 
                            SortExpression="Orderid" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Bookid1" HeaderText="Bookid1" 
                            SortExpression="Bookid1" />
                        <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                            SortExpression="Bookname" />
                        <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" 
                            SortExpression="Orderdate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Samplereturndate" HeaderText="Samplereturndate" 
                            SortExpression="Samplereturndate" />
                        <asp:BoundField DataField="Memberid" HeaderText="Memberid" 
                            SortExpression="Memberid" />
                        <asp:CommandField SelectText="Choose The Lending" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#99CCFF" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Orderid], [Username], [Bookid1], [Bookname], [Orderdate], [Getdate], [Samplereturndate], [Memberid] FROM [lendviewofadmin] WHERE ([Memberid] = @Memberid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="mid2" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Order No"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="41px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Get Date"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Text="Return Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" style="width: 128px" Width="185px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" Text="Fain Days"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="44px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Find</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label5" runat="server" Text="Fain Rate"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox4" runat="server" Width="81px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label7" runat="server" Text="Fain amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="84px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label8" runat="server" Text="Note"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox7" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">ConForm</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Show 
                details</asp:LinkButton>
            </td>
        </tr>
        </table>
</asp:Content>

