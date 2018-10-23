<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="Showonbookordermemberandbook.aspx.cs" Inherits="Admin_Showonbookordermemberandbook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 243px;
        }
        .style4
        {
            width: 243px;
        }
        .style5
        {
            width: 243px;
            height: 49px;
        }
        .style6
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 395px;">
        <tr>
            <td class="style4" bgcolor="#99CCFF">
                <asp:Label ID="Label3" runat="server" Text="Member Details"></asp:Label>
            </td>
            <td bgcolor="#99CCFF">
                <asp:Label ID="Label4" runat="server" Text="Order Book Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="Memberid" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="245px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <PagerStyle BackColor="#284775" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Memberid" HeaderText="Memberid" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Memberid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Province" HeaderText="Province" 
                            SortExpression="Province" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Homeph" HeaderText="Homeph" 
                            SortExpression="Homeph" />
                        <asp:BoundField DataField="Mobileph" HeaderText="Mobileph" 
                            SortExpression="Mobileph" />
                    </Fields>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Memberid], [Firstname], [Address], [City], [Province], [Email], [Homeph], [Mobileph] FROM [Member] WHERE ([Memberid] = @Memberid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Memberid" SessionField="mmid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="Bookid" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="339px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                            SortExpression="Bookid" />
                        <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                            SortExpression="Bookname" />
                        <asp:BoundField DataField="Categoryname" HeaderText="Categoryname" 
                            SortExpression="Categoryname" />
                        <asp:BoundField DataField="Language" HeaderText="Language" 
                            SortExpression="Language" />
                        <asp:BoundField DataField="Publication" HeaderText="Publication" 
                            SortExpression="Publication" />
                        <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                            SortExpression="Publishdate" />
                        <asp:BoundField DataField="Edition" HeaderText="Edition" 
                            SortExpression="Edition" />
                        <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
                        <asp:BoundField DataField="Donater" HeaderText="Donater" 
                            SortExpression="Donater" />
                        <asp:BoundField DataField="Noofpages" HeaderText="Noofpages" 
                            SortExpression="Noofpages" />
                        <asp:BoundField DataField="Referenceid" HeaderText="Referenceid" 
                            SortExpression="Referenceid" />
                    </Fields>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                    SelectCommand="SELECT [Bookid], [Bookname], [Categoryname], [Language], [Publication], [Publishdate], [Edition], [Isbn], [Donater], [Noofpages], [Referenceid] FROM [bookcategory] WHERE ([Bookid] = @Bookid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Bookid" SessionField="bbid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label5" runat="server" Text="Send the message from this member"></asp:Label>
            </td>
            <td valign="top" class="style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="275px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Send</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

