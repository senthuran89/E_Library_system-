<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Lendview.aspx.cs" Inherits="Member_site_Lendview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-color: #99CCFF">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Member Lend Books Details " 
            ForeColor="Black" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td bgcolor="#99CCFF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                    onclick="LinkButton2_Click" Font-Underline="False">Return Books
                </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" 
                    onclick="LinkButton3_Click" Font-Underline="False">Lend Books
                </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" 
                    onclick="LinkButton4_Click" Font-Underline="False">Payment View
                </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" 
                    onclick="LinkButton5_Click" Font-Underline="False">Fain View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" 
                    onclick="LinkButton6_Click" Font-Underline="False">Member Ship
                </asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Orderid" 
                    DataSourceID="SqlDataSource1">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="Orderid" HeaderText="Orderid" 
                            SortExpression="Orderid" ReadOnly="True" />
                        <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                            SortExpression="Bookname" />
                        <asp:BoundField DataField="Noofpages" HeaderText="Noofpages" 
                            SortExpression="Noofpages" />
                        <asp:BoundField DataField="Publication" HeaderText="Publication" 
                            SortExpression="Publication" />
                        <asp:BoundField DataField="Donater" HeaderText="Donater" 
                            SortExpression="Donater" />
                        <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" 
                            SortExpression="Orderdate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Samplereturndate" HeaderText="Samplereturndate" 
                            SortExpression="Samplereturndate" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    
                    SelectCommand="SELECT [Orderid], [Bookname], [Noofpages], [Publication], [Donater], [Orderdate], [Getdate], [Samplereturndate] FROM [Lendviw] WHERE ([Memberid] = @Memberid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="uid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</p>
</asp:Content>

