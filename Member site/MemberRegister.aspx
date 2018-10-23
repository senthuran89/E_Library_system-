<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="MemberRegister.aspx.cs" Inherits="Member_site_MemberRegister" Title="Untitled Page" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 29px;
        }
        .style7
        {
            height: 39px;
        }
        .style11
        {
            height: 40px;
            width: 224px;
        }
        .style15
        {
            height: 39px;
            width: 284px;
        }
        .style17
        {
            height: 40px;
            width: 284px;
        }
        .style18
        {
            height: 39px;
            width: 115px;
        }
        .style20
        {
            height: 40px;
            width: 115px;
        }
        .style26
        {
            height: 52px;
            width: 284px;
        }
        .style27
        {
            height: 52px;
            width: 115px;
        }
        .style28
        {
            height: 52px;
            width: 224px;
        }
        .style29
        {
            height: 39px;
            width: 224px;
        }
        .style40
        {
            width: 284px;
        }
        .style41
        {
            width: 153px;
        }
        .style42
        {
            height: 52px;
            width: 153px;
        }
        .style44
        {
            height: 40px;
            width: 153px;
        }
        .style45
        {
            height: 16px;
        }
        .style46
        {
            height: 15px;
            width: 153px;
        }
        .style47
        {
            height: 15px;
            width: 284px;
        }
        .style48
        {
            height: 15px;
            width: 115px;
        }
        .style49
        {
            height: 15px;
            width: 224px;
        }
        .style50
        {
            height: 93px;
            width: 153px;
        }
        .style51
        {
            height: 93px;
            width: 284px;
        }
        .style52
        {
            height: 93px;
            width: 115px;
        }
        .style53
        {
            height: 93px;
            width: 224px;
        }
        .style54
        {
            width: 153px;
            height: 16px;
        }
        .style55
        {
            height: 16px;
            width: 284px;
        }
        .style56
        {
            width: 153px;
            height: 142px;
        }
        .style57
        {
            height: 142px;
            width: 284px;
        }
        .style58
        {
            height: 142px;
        }
        .style59
        {
            height: 22px;
            width: 186px;
        }
        .style60
        {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="left" style="border: thin groove #33CCFF; width: 100%;">
            <tr>
                <td class="style59" colspan="4" bgcolor="#99CCFF">
                    <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Member Registation Form." Font-Size="Medium" Width="250px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style60" colspan="4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                        Text="Member Personel Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style46" valign="top">
                    <asp:Label ID="Label4" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:TextBox ID="TextBox1" runat="server" Width="303px" 
                        ontextchanged="TextBox1_TextChanged" ValidationGroup="empty" 
                        style="margin-left: 0px"></asp:TextBox>
                        
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                                                
                                                                </td>
                <td class="style48" valign="top">
                    <asp:Label ID="Label18" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style49" valign="top">
                    <asp:TextBox ID="TextBox2" runat="server" Width="303px" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style42" valign="top">
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style26" align="left" valign="top">
                    <asp:TextBox ID="TextBox3" runat="server" Height="69px" Width="303px" 
                        ValidationGroup="empty" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style27" valign="top">
                    <asp:Label ID="Label19" runat="server" Text="Province"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label20" runat="server" Text="Divisional Council"></asp:Label>
                </td>
                <td class="style28" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="173px" 
                        ValidationGroup="empty">
                        <asp:ListItem>North Province</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="170px">
                        <asp:ListItem>Chavakacheri Divisional Council</asp:ListItem>
                        <asp:ListItem>Chavakacheri Urban Council</asp:ListItem>
                        <asp:ListItem>Delft Divisional Council</asp:ListItem>
                        <asp:ListItem>Jaffna Municipal Council</asp:ListItem>
                        <asp:ListItem>Karainagar Divisional Council</asp:ListItem>
                        <asp:ListItem>Kayts Divisional Council</asp:ListItem>
                        <asp:ListItem>Nallur Divisional Council</asp:ListItem>
                        <asp:ListItem>Point Pedro Divisional Council</asp:ListItem>
                        <asp:ListItem>Point Pedro Urban Council</asp:ListItem>
                        <asp:ListItem>Vadamarachchi South West Divisional Council</asp:ListItem>
                        <asp:ListItem>Valikamam East Divisional Council</asp:ListItem>
                        <asp:ListItem>Valikamam North Divisional Council</asp:ListItem>
                        <asp:ListItem>Valikamam South Divisional Council</asp:ListItem>
                        <asp:ListItem>Valikamam South West Divisional Council</asp:ListItem>
                        <asp:ListItem>Valikamam West Divisional Council</asp:ListItem>
                        <asp:ListItem>Valvettithurai Urban Council</asp:ListItem>
                        <asp:ListItem>Velanai Divisional Council</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style50" valign="top">
                    <asp:Label ID="Label6" runat="server" Text="Office Address"></asp:Label>
                </td>
                <td class="style51" valign="top">
                    <asp:TextBox ID="TextBox4" runat="server" Height="63px" Width="303px" 
                        ValidationGroup="empty" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style52" valign="top">
                    <asp:Label ID="Label21" runat="server" Text="Mobile Phone"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label22" runat="server" Text="Home Phone"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label23" runat="server" Text="Office Phone"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="style53" valign="top">
                    <asp:TextBox ID="TextBox5" runat="server" Width="168px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                        
                         <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Please enter a number" ControlToValidate="TextBox5" Type="Integer" 
                Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>                                                                      
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter 10 Numbers" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Width="166px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ErrorMessage="Please enter a number" ControlToValidate="TextBox6" Type="Integer" 
                Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>                                                                      
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter 10 Numbers" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" Width="164px"></asp:TextBox>
                    <br />
                    
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ErrorMessage="Please enter a number" ControlToValidate="TextBox7" Type="Integer" 
                Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>                                                                      
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter 10 Numbers" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style44" valign="top">
                    <asp:Label ID="Label7" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td class="style17" valign="top">
                    <asp:TextBox ID="TextBox8" runat="server" ValidationGroup="empty" Width="303px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                                                
                                                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8"
                    ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid email address"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                
                
                    <asp:Label ID="Label28" runat="server" ForeColor="Red" Text="."></asp:Label>
                </td>
                <td class="style20">
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label8" runat="server" Text="NIC Number"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox9" runat="server" ValidationGroup="empty" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="NIC No Format Wrong" 
                        ValidationExpression="\d{9}[V|v|x|X]"></asp:RegularExpressionValidator>
                </td>
                <td class="style18">
                </td>
                <td class="style29">
                </td>
            </tr>
            <tr>
                <td class="style56" valign="top">
                    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td class="style57" align="left" valign="top">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="16px" 
                        Width="125px" CssClass="style1" 
                        onselectionchanged="Calendar1_SelectionChanged" CellPadding="1" 
                        style="margin-right: 0px">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" 
                            ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" 
                            Height="25px" />
                    </asp:Calendar>
                    <asp:TextBox ID="TextBox10" runat="server" ValidationGroup="empty" 
                        Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="*" ValidationGroup="empty">*</asp:RequiredFieldValidator>
                </td>
                <td class="style58" colspan="2" align="left" valign="top">
                    <Bewise:FlashControl ID="FlashControl4" runat="server" Height="172px" 
                        MovieUrl="~/Member site/flash/B 2.swf" Width="405px" />
                    </td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label10" runat="server" Text="Register Date"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox11" runat="server" ValidationGroup="empty" 
                        Width="191px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style45" valign="top" colspan="2">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Choose your userID and password"></asp:Label>
                </td>
                <td class="style45" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label24" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox12" runat="server" ValidationGroup="empty" 
                        Width="223px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label29" runat="server" ForeColor="Red" Text="."></asp:Label>
                </td>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label25" runat="server" Text="PassWord"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox13" runat="server" ValidationGroup="empty" 
                        Width="221px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label26" runat="server" Text="Reenter Password"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox14" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label30" runat="server" ForeColor="Red" Text="."></asp:Label>
                </td>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    &nbsp;</td>
                <td class="style15" valign="top">
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">I accept the User Agreement<b> - opens in a new 
                    window or tab</b> and Privacy Policy<b> .</b></span><![if !supportLists]><span style="font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol"><span style="mso-list:Ignore"><span 
                        style="font:7.0pt &quot;Times New Roman&quot;">&nbsp; </span></span></span><![endif]>
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">I may receive communications from ELibrary
                    <span style="mso-spacerun:yes">&nbsp;</span>and can change my notification 
                    preferences in My book lending.<o:p></o:p></span></td>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style54" valign="top">
                    </td>
                <td class="style55" valign="top">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="  I agree that:" />
                    <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="."></asp:Label>
                </td>
                <td class="style45" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                </td>
                <td class="style40">
                    <asp:LinkButton ID="LinkButton1" runat="server" ValidationGroup="empty" 
                        onclick="LinkButton1_Click">Sin Up</asp:LinkButton>
                </td>
                <td colspan="2">
                    <asp:LinkButton ID="LinkButton2" runat="server">Cancel</asp:LinkButton>
                </td>
            </tr>
            </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>

