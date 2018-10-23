<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Membership.aspx.cs" Inherits="Member_site_Membership" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 914px;
            height: 197px;
        }
        .style8
    {
        width: 914px;
        height: 26px;
    }
        .style9
        {
            width: 348px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;<table style="width:100%;">
            <tr>
                <td class="style8" align="left" bgcolor="#99CCFF" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text=" Member Ship  Page " 
            ForeColor="Black" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8" align="left" bgcolor="#99CCFF" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" 
                        onclick="LinkButton3_Click" Font-Underline="False">Lend Books
                    </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" 
                        onclick="LinkButton4_Click" Font-Underline="False">Return Books</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" 
                        onclick="LinkButton5_Click" Font-Underline="False">Payment View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" 
                        onclick="LinkButton6_Click" Font-Underline="False">Fain View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style9" align="left">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Overline="False" 
                        Font-Size="Medium" Font-Underline="True" ForeColor="Black" 
                        Text="Lending Book Conformation &nbsp;&nbsp;"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" Height="69px" Width="285px">
                        <asp:Label ID="Label4" runat="server" ForeColor="Black" 
                            Text="E Library Messages "></asp:Label>
                        &nbsp;&nbsp;&nbsp; &nbsp;<br />
                        <asp:Label ID="Label5" runat="server" Text="." ForeColor="#0066FF"></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Go 
                        To Reorder
                        </asp:LinkButton>
                        <asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
                    </asp:Panel>
                </td>
                <td class="style8" align="left" valign="top">
                    <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Overline="False" 
                        Font-Size="Medium" Font-Underline="True" ForeColor="Black" 
                        Text="Check Your Order "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="21px" 
                        ImageUrl="~/icon/gfg.jpeg" onclick="ImageButton2_Click" Width="43px" />
&nbsp;<asp:Panel ID="Panel2" runat="server" Height="69px" Width="285px">
                        <asp:Label ID="Label9" runat="server" ForeColor="Black" 
                            Text="E Library Messages "></asp:Label>
                        &nbsp;&nbsp;&nbsp; &nbsp;<br />
                        <asp:Label ID="Label10" runat="server" Text="." ForeColor="#0066FF"></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text="." ForeColor="#0066FF"></asp:Label>
                        <asp:Label ID="Label13" runat="server" Text="." Visible="False" 
                            ForeColor="#0066FF"></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton2_Click">Go 
                        To Reorder
                        </asp:LinkButton>
                        <asp:Label ID="Label11" runat="server" Text="0"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Height="16px" Width="16px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        DataKeyNames="Orderno" DataSourceID="SqlDataSource1">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="Orderno" HeaderText="Orderno" ReadOnly="True" 
                                SortExpression="Orderno" />
                            <asp:BoundField DataField="Bookid1" HeaderText="Bookid1" 
                                SortExpression="Bookid1" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
                            <asp:BoundField DataField="Authername1" HeaderText="Authername1" 
                                SortExpression="Authername1" />
                            <asp:CommandField ButtonType="Button" SelectText="Click to Conform Your Lend" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="#99CCFF" BorderColor="#99CCFF" ForeColor="White" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [bookorders] WHERE (([Orderno] = @Orderno) AND ([Orderno] = @Orderno2))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="Orderno" 
                                SessionField="ordernumber" Type="Int32" />
                            <asp:SessionParameter Name="Orderno2" SessionField="ordernumber" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </p>
</asp:Content>

