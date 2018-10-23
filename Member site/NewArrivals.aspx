<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="NewArrivals.aspx.cs" Inherits="Member_site_NewArrivals" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 151px;
            width: 596px;
        }
        .style8
        {
            width: 596px;
        }
        .MsoNormal
    {
        width: 718px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td bgcolor="#99CCFF" class="style8">
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" 
                        Text="New Book  Arrivals Page" Font-Bold="True" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <p class="MsoNormal">
                        This page have new arrivals book details such as magazines, New books etc .Here 
                        show on just Top Twenty Books details. members can odrer&nbsp; and show here 
                        latest book collections. <span style="mso-spacerun:yes">&nbsp;</span></p>
                </td>
            </tr>
            <tr>
                <td align="left" class="style7" valign="top" 
                    style="border: thin groove #3399FF">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Bookid" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" Width="703px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged2">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Bookid" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Picture" HeaderText="Picture" 
                                SortExpression="Picture" Visible="False" />
                            <asp:CommandField ButtonType="Button" SelectText="Order The Book" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="#99CCFF" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        
                        
                        
                        
                        SelectCommand="SELECT Top 10[Bookid], [Bookname],  [Language], [Publishdate], [Publication],  [Picture] FROM [Book]">
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetBookdetails2" TypeName="BookOrder"></asp:ObjectDataSource>
                    <asp:Label ID="Label12" runat="server" Text="." Visible="False"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="."></asp:Label>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </asp:Content>

