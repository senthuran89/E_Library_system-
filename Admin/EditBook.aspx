<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="EditBook.aspx.cs" Inherits="Admin_EditBook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            height: 23px;
        }
    .style4
    {
        width: 31px;
    }
    .style5
    {
        width: 227px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%;">
        <tr>
            <td colspan="2" bgcolor="#0099FF">
                <asp:Label ID="Label1" runat="server" Text="Edit Book Details Page"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
                    PageSize="3">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" 
                            ButtonType="Button" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#99CCFF" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="Getbook" TypeName="adminfunctions" UpdateMethod="Editbook">
                    <UpdateParameters>
                        <asp:Parameter Name="Bookid" Type="Int32" />
                        <asp:Parameter Name="Categoryid" Type="Int32" />
                        <asp:Parameter Name="Referenceid" Type="Int32" />
                        <asp:Parameter Name="Bookname" Type="String" />
                        <asp:Parameter Name="Noofpages" Type="Int32" />
                        <asp:Parameter Name="Language" Type="String" />
                        <asp:Parameter Name="Autherid" Type="Int32" />
                        <asp:Parameter Name="Publishdate" Type="DateTime" />
                        <asp:Parameter Name="Publication" Type="String" />
                        <asp:Parameter Name="Publishcity" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="Isbn" Type="String" />
                        <asp:Parameter Name="Donater" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Picture" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Categoryid" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Categoryid" />
                            <asp:BoundField DataField="Categoryname" HeaderText="Categoryname" 
                                SortExpression="Categoryname" />
                            <asp:BoundField DataField="Description" HeaderText="Description" 
                                SortExpression="Description" />
                        </Columns>
                        <FooterStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#99CCFF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td class="style4" valign="top">
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Autherid" 
                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Autherid" HeaderText="Autherid" ReadOnly="True" 
                                SortExpression="Autherid" />
                            <asp:BoundField DataField="Authername1" HeaderText="Authername1" 
                                SortExpression="Authername1" />
                            <asp:BoundField DataField="Authername2" HeaderText="Authername2" 
                                SortExpression="Authername2" />
                            <asp:BoundField DataField="Authername3" HeaderText="Authername3" 
                                SortExpression="Authername3" />
                        </Columns>
                        <FooterStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#99CCFF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        SelectCommand="SELECT * FROM [Auther]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

