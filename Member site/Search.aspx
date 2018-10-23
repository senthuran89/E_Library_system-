<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Member_site_Search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 326px;
            height: 456px;
        }
        .style14
        {
            width: 348px;
            height: 456px;
        }
        .style15
        {
            width: 326px;
            height: 190px;
        }
        .style16
        {
            width: 348px;
            height: 190px;
        }
        .style20
        {
            width: 326px;
            height: 65px;
        }
        .style21
        {
            width: 348px;
            height: 65px;
        }
        .style22
        {
            height: 13px;
        }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	        height: 22px;
        }
        .style23
        {
            width: 326px;
            height: 44px;
        }
        .style24
        {
            width: 348px;
            height: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 1101px;">
            <tr>
                <td colspan="2" bgcolor="#99CCFF" class="style22">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Member Can Search And Order the book." Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style22">
                    <p class="MsoNormal">
                        Search page have four <span style="mso-spacerun:yes">&nbsp;</span>book search
                        <span style="mso-spacerun:yes">&nbsp;</span>options. member can search suitable 
                        method. for an example a member know the Author name
                        <span style="mso-spacerun:yes">&nbsp;</span>so can choose the Author
                        <span style="mso-spacerun:yes">&nbsp;</span>name<span style="mso-spacerun:yes">&nbsp;
                        </span>then click to find (Green Button) automatically below show on book 
                        details here order the book.</p>
                </td>
            </tr>
            <tr valign="top">
                <td align="left" class="style23" 
                    style="padding: -1px; border: thin groove #0099FF" valign="top">
                    <asp:Label ID="Label4" runat="server" Text="Choose the Book Name"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#99CCFF" 
                        ForeColor="Black" Height="30px" Width="200px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Find" 
                        Height="30px" ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton2_Click" 
                        ToolTip="Find" Width="68px" />
                </td>
                <td align="left" class="style24" style="border: thin groove #00CCFF" 
                    valign="top">
                    <asp:Label ID="Label5" runat="server" Text="Choose the Auther "></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#99CCFF" 
                        ForeColor="Black" Height="30px" Width="214px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="29px" 
                        ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton3_Click" Width="57px" />
                </td>
            </tr>
            <tr>
                <td class="style8" style="border: thin groove #00CCFF">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Width="412px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="Bookid">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Noofpages" HeaderText="Noofpages" 
                                SortExpression="Noofpages" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publishcity" HeaderText="Publishcity" 
                                SortExpression="Publishcity" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        
                        SelectCommand="SELECT Bookname, Noofpages, Language, Publication, Publishdate, Publishcity, Edition, Picture, Bookid FROM bookview WHERE (Bookname = @Bookname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Bookname" SessionField="bname" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetBookdetails1" TypeName="BookOrder">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="Bookid" SessionField="bid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="style14" align="left" style="border: thin groove #00CCFF" 
                    valign="top">
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView2_SelectedIndexChanged" 
                        AutoGenerateColumns="False" DataKeyNames="Bookid" DataSourceID="SqlDataSource2">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Publishcity" HeaderText="Publishcity" 
                                SortExpression="Publishcity" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Authername1" HeaderText="Authername1" 
                                SortExpression="Authername1" />
                            <asp:BoundField DataField="Picture" HeaderText="Picture" 
                                SortExpression="Picture" Visible="False" />
                            <asp:CommandField ButtonType="Button" SelectText="Order The book" 
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
                        SelectCommand="SELECT [Bookid], [Bookname], [Language], [Publishdate], [Publication], [Publishcity], [Edition], [Authername1], [Picture] FROM [bookview] WHERE ([Authername1] = @Authername1)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Authername1" SessionField="auther" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style20" align="left" style="border: thin groove #00CCFF" 
                    valign="top">
                    <asp:Label ID="Label6" runat="server" Text="Choose the Publication"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#99CCFF" 
                        ForeColor="Black" Height="30px" Width="213px">
                    </asp:DropDownList>
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="33px" 
                        ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton4_Click" Width="57px" />
                </td>
                <td class="style21" align="left" style="border: thin groove #00CCFF" 
                    valign="top">
                    <asp:Label ID="Label7" runat="server" Text="Enter The ISBN"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#99CCFF" 
                        BorderColor="#00CCFF" ForeColor="Black" Height="30px" Width="192px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="33px" 
                        ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton5_Click" Width="67px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style15" align="left" style="border: thin groove #00CCFF" 
                    valign="top">
                    <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView3_SelectedIndexChanged1" 
                        AutoGenerateColumns="False" DataKeyNames="Bookid" DataSourceID="SqlDataSource3">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Publishcity" HeaderText="Publishcity" 
                                SortExpression="Publishcity" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT [Bookid], [Bookname], [Language], [Publishdate], [Publication], [Publishcity], [Edition], [Isbn], [Picture] FROM [bookview] WHERE ([Publication] = @Publication)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Publication" SessionField="pul" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="."></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="."></asp:Label>
                    <br />
                </td>
                <td class="style16" align="left" style="border: thin groove #00CCFF" 
                    valign="top">
                    <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView4_SelectedIndexChanged1" 
                        AutoGenerateColumns="False" DataKeyNames="Bookid" DataSourceID="SqlDataSource4">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Publishcity" HeaderText="Publishcity" 
                                SortExpression="Publishcity" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT [Bookid], [Bookname], [Publishdate], [Publication], [Publishcity], [Edition], [Isbn], [Authername1], [Picture] FROM [bookview] WHERE ([Isbn] = @Isbn)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Isbn" SessionField="isbn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </asp:Content>

