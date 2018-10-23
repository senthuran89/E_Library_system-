<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 23px;
        }
        .style4
        {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-color: #99CCFF">
        <table style="width:100%;">
            <tr>
                <td class="style4" bgcolor="#99CCFF">
                    <asp:Label ID="Label1" runat="server" Text="Add New Category"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                        DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
                        Height="50px" Width="544px" 
                        onpageindexchanging="DetailsView1_PageIndexChanging1">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <RowStyle BackColor="#EFF3FB" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Fields>
                            <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                        </Fields>
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        InsertMethod="AddCategory" SelectMethod="GetCategory" TypeName="adminfunctions">
                        <InsertParameters>
                            <asp:Parameter Name="Categoryid" Type="Int32" />
                            <asp:Parameter Name="Categoryname" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            </table>
    </p>
</asp:Content>

