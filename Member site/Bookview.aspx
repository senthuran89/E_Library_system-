<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Bookview.aspx.cs" Inherits="Member_site_Bookview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 19px;
        }
        .style7
        {
            width: 252px;
        }
        .style8
        {
            height: 2px;
            width: 186px;
        }
        .style9
        {
            width: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:100%; margin-bottom: 0px;">
            <tr>
                <td class="style8" colspan="3" bgcolor="#99CCFF">
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" 
                        Text="Full View Of  Select  The Book" Font-Bold="True" Font-Size="Medium" 
                        Width="250px"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="."></asp:Label>
&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="Bookid" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="28px" 
                        onpageindexchanged="DetailsView1_PageIndexChanged" 
                        onpageindexchanging="DetailsView1_PageIndexChanging" Width="729px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <PagerStyle BackColor="#284775" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Fields>
                            <asp:ImageField DataImageUrlField="Picture">
                            </asp:ImageField>
                            <asp:BoundField DataField="Bookname" HeaderText="Bookname" 
                                SortExpression="Bookname" />
                            <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" 
                                SortExpression="Bookid" />
                            <asp:BoundField DataField="Noofpages" HeaderText="Noofpages" 
                                SortExpression="Noofpages" />
                            <asp:BoundField DataField="Language" HeaderText="Language" 
                                SortExpression="Language" />
                            <asp:BoundField DataField="Referenceid" HeaderText="Referenceid" 
                                SortExpression="Referenceid" />
                            <asp:BoundField DataField="Publishdate" HeaderText="Publishdate" 
                                SortExpression="Publishdate" />
                            <asp:BoundField DataField="Publication" HeaderText="Publication" 
                                SortExpression="Publication" />
                            <asp:BoundField DataField="Publishcity" HeaderText="Publishcity" 
                                SortExpression="Publishcity" />
                            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                SortExpression="Edition" />
                            <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
                            <asp:BoundField DataField="Donater" HeaderText="Donater" 
                                SortExpression="Donater" />
                            <asp:BoundField DataField="Description" HeaderText="Description" 
                                SortExpression="Description" />
                            <asp:BoundField DataField="Authername1" HeaderText="Authername1" 
                                SortExpression="Authername1" />
                            <asp:BoundField DataField="Authername2" HeaderText="Authername2" 
                                SortExpression="Authername2" />
                            <asp:BoundField DataField="Authername3" HeaderText="Authername3" 
                                SortExpression="Authername3" />
                            <asp:BoundField DataField="Picture" HeaderText="Picture" 
                                SortExpression="Picture" Visible="False" />
                        </Fields>
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#99CCFF" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ElibrarySystemConnectionString %>" 
                        onselecting="SqlDataSource1_Selecting" 
                        
                        SelectCommand="SELECT Bookname, Bookid, Noofpages, Language, Referenceid, Publishdate, Publication, Publishcity, Edition, Isbn, Donater, Description, Authername1, Authername2, Authername3, Picture FROM bookview WHERE (Bookid = @Bookid)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="Bookid" SessionField="bid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label6" runat="server" Text="."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        BackColor="Silver" Font-Underline="False" ForeColor="Black">Conform 
                    The Order</asp:LinkButton>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        BackColor="Silver" Font-Underline="False" ForeColor="Black">Go 
                    To Book Order Page</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

