<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="MemberPaymentview .aspx.cs" Inherits="Member_site_MemberPaymentview_" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%;">
        <tr>
            <td bgcolor="#99CCFF">
                <asp:Label ID="Label3" runat="server" Text="Member Payment View" 
            ForeColor="Black" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#99CCFF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                    onclick="LinkButton2_Click" Font-Underline="False">Fain View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" 
                    onclick="LinkButton3_Click" Font-Underline="False">Return Books
                </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" 
                    onclick="LinkButton4_Click" Font-Underline="False">Lend Books
                </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" 
                    onclick="LinkButton5_Click" Font-Underline="False">Payment View</asp:LinkButton>
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
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource2">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Province" HeaderText="Province" 
                            SortExpression="Province" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Regdate" HeaderText="Regdate" 
                            SortExpression="Regdate" />
                        <asp:BoundField DataField="Paymentdate" HeaderText="Paymentdate" 
                            SortExpression="Paymentdate" />
                        <asp:BoundField DataField="Paymenttype" HeaderText="Paymenttype" 
                            SortExpression="Paymenttype" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Duedate" HeaderText="Duedate" 
                            SortExpression="Duedate" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Firstname], [Address], [Province], [City], [Email], [Regdate], [Paymentdate], [Paymenttype], [Amount], [Duedate] FROM [paymentview] WHERE ([Memberid] = @Memberid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="uid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Orderid], [Bookname], [Getdate], [Returndate], [days], [Fainrate], [Amount] FROM [Fainview] WHERE (([Memberid] = @Memberid) AND ([Memberid] = @Memberid2))">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="uid" Type="Int32" />
                        <asp:SessionParameter Name="Memberid2" SessionField="uid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</p>
</asp:Content>

