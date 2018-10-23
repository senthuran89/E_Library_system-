<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="AddNewbook.aspx.cs" Inherits="Admin_AddNewbook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%;">
        <tr>
            <td class="style4" bgcolor="#99CCFF" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Add New Book" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" 
                    CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="113px" Width="474px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <Fields>
                        <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    InsertMethod="Addbook" SelectMethod="Getbook" TypeName="adminfunctions">
                    <InsertParameters>
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
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
            <td valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
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
        </tr>
        <tr>
            <td bgcolor="#99CCFF" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Add New Auther"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DetailsView ID="DetailsView3" runat="server" 
                    CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="#333333" 
                    GridLines="None" Height="35px" Width="473px" 
                    onpageindexchanging="DetailsView3_PageIndexChanging">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    InsertMethod="addauther" SelectMethod="Getauther" TypeName="adminfunctions">
                    <InsertParameters>
                        <asp:Parameter Name="Autherid" Type="Int32" />
                        <asp:Parameter Name="Authername1" Type="String" />
                        <asp:Parameter Name="Authername2" Type="String" />
                        <asp:Parameter Name="Authername3" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        </table>
</p>
</asp:Content>

