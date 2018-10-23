<%@ Page Language="C#" MasterPageFile="~/Admin/Admin .master" AutoEventWireup="true" CodeFile="Editcategory.aspx.cs" Inherits="Admin_Editcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            height: 23px;
        }
        .style4
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%;">
        <tr>
            <td class="style4" bgcolor="#0099FF">
                <asp:Label ID="Label1" runat="server" Text="Edit Category"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="196px" Width="615px" PageSize="5">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" />
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
                    SelectMethod="GetCategory" TypeName="adminfunctions" 
                    UpdateMethod="Updatecatogery">
                    <UpdateParameters>
                        <asp:Parameter Name="Categoryid" Type="Int32" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        </table>
</p>
</asp:Content>

