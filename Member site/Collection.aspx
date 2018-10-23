<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Collection.aspx.cs" Inherits="Member_site_Collection" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 187px;
        }
        .style7
        {
            width: 672px;
            height: 231px;
        }
        .style8
        {
            height: 13px;
        }
        .style9
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%; height: 642px;">
            <tr>
                <td bgcolor="#99CCFF" class="style8">
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" 
                        Text="Book Collection  Page" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <p class="MsoNormal">
                        Collection <span style="mso-spacerun:yes">&nbsp;</span>page Member Can show All Books 
                        Categories .For an example a member select a category automatically below show 
                        that selected category all books details then member can order any one book.
                    </p>
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="style6" 
                    style="border: thin outset #33CCFF;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Categoryid" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Height="46px" 
                        Width="719px">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Select The Category" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="#99CCFF" ForeColor="Black" />
                            </asp:CommandField>
                            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" ReadOnly="True" 
                                SortExpression="Categoryid" />
                            <asp:BoundField DataField="Categoryname" HeaderText="Categoryname" 
                                SortExpression="Categoryname" />
                            <asp:BoundField DataField="Description" HeaderText="Description" 
                                SortExpression="Description" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT [Categoryid], [Categoryname], [Description] FROM [Category]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="style7" 
                    style="border: thin groove #33CCFF">
                    <asp:Label ID="Label7" runat="server" 
                        Text="Member Can Order Here."></asp:Label>
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" 
                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged" Height="103px" 
                        Width="719px" AutoGenerateColumns="False" DataKeyNames="Bookid">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" 
                                SortExpression="Categoryid" Visible="False" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Authername1" HeaderText="Authername1" 
                                SortExpression="Authername1" />
                            <asp:BoundField DataField="Picture" HeaderText="Picture" 
                                SortExpression="Picture" Visible="False" />
                            <asp:CommandField ButtonType="Button" SelectText="Order The Book" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="#99CCFF" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT [Bookid], [Categoryid], [Bookname], [Language], [Publication], [Edition], [Authername1], [Picture] FROM [bookview] WHERE ([Categoryid] = @Categoryid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Categoryid" SessionField="cid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetBookdetails" TypeName="BookOrder">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="CategoryID" SessionField="cid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="style9">
                    <asp:Label ID="Label8" runat="server" Text="."></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="."></asp:Label>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>

