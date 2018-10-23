<%@ Page Language="C#" MasterPageFile="~/Member site/MemberMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_site_Home" Title="Untitled Page" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 440px;
            height: 599px;
        }
        .style7
        {
            height: 599px;
        }
        .style9
        {
            height: 26px;
        }
        .style10
        {
            height: 31px;
        }
        .style11
        {
            height: 32px;
        }
        .style12
        {
            height: 31px;
            width: 83px;
        }
        .style13
        {
            height: 32px;
            width: 83px;
        }
        .style14
        {
            width: 83px;
            height: 21px;
        }
        .style15
        {
            height: 21px;
        }
        .style16
        {        width: 429px;
    }
        .style17
        {
            width: 429px;
            height: 42px;
        }
        .style18
        {
            width: 533px;
            height: 309px;
        }
        .style19
        {
            height: 37px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 603px;">
        <tr>
            <td align="left" class="style18" valign="top" 
                
                
                
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal">
                <table style="width:92%; margin-bottom: 2px; height: 365px;">
                    <tr>
                        <td class="style17" valign="top" 
                            style="font-family: 'Rockwell Extra Bold'; font-size: medium">
                            &nbsp;Welcome&nbsp; to&nbsp; Jaffna&nbsp; (E)&nbsp;&nbsp; Library</td>
                    </tr>
                    <tr>
                        <td class="style16">
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">The fully fledged Jaffna (E) library caters to 
                    the Members and students by housing a wide range of books relating to 
                    Accounting, Auditing, Management, Economics, Commerce, Taxation and Law etc. <o:p></o:p>
                    </span>
                </p>
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">It holds past question papers, suggested 
                    answers, examiners comments and study packs, CDs/DVDs and newspaper articles 
                    too. <o:p></o:p></span>
                </p>
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">Facility of online searching, checking the 
                    availability of books, reservations, extending, and host of other in-house 
                    library services are now at your fingertips <o:p></o:p></span>
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;</span><b><span 
                        style="font-size:12.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Jaffna 
                    Library<br />
                    </span></b>
                    <span style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;AB16, Jaffna,<br />
                    &nbsp;Sri Lanka.
                    <br />
                    &nbsp;Tel:+94-21-2226028 /2356030 - Ext 365/219<br />
                    &nbsp;Fax:+94-21-2226027<br />
                    &nbsp;Email :<u><span style="color:blue"><a href="mailto:librarian@Ejaffnalibrary.lk">librarian@Ejaffnalibrary.lk</a></span></u></span></p>
                        </td>
                    </tr>
                </table>
                <br />
&nbsp;</td>
            <td align="left" class="style7" valign="top" 
                style="border: thin outset #99CCFF" width="175">
                <asp:Panel ID="Panel2" runat="server" BackColor="#99CCFF" Height="26px" 
                    Width="262px">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="." Visible="False"></asp:Label>
                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="27px" 
                        ImageUrl="~/icon/signInButton.png" onclick="ImageButton4_Click" Width="81px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="23px" 
                        ImageUrl="~/icon/signup_sm.gif" onclick="ImageButton5_Click" Width="81px" />
                    <br />
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BorderColor="#3399FF" BorderStyle="Double" 
                    Height="266px" style="margin-top: 0px" Width="235px">
                    <table style="width: 100%; height: 255px;">
                        <tr>
                            <td bgcolor="#99CCFF" class="style9" colspan="2">
                                <asp:Label ID="Label3" runat="server" BorderColor="Red" BorderStyle="None" 
                                    Font-Bold="True" Font-Names="Times New Roman" ForeColor="Black" 
                                    Text="Login..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top" class="style12">
                                &nbsp;&nbsp;
                                <br />
                                &nbsp;<asp:Label ID="Label4" runat="server" Text="User"></asp:Label>
                            </td>
                            <td valign="top" class="style10">
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" Width="137px"></asp:TextBox>
                                <asp:Label ID="Label6" runat="server" Font-Size="Smaller" ForeColor="#990000" 
                                    Text="."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style13">
                                &nbsp;<br />
                                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td valign="top" class="style11">
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="134px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style14">
&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="#666666" 
                                    BorderColor="#666666" ForeColor="White" Height="27px" onclick="Button2_Click" 
                                    Text="Login" Width="62px" />
                            </td>
                            <td valign="top" class="style15">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#666666" 
                                    BorderColor="#666666" ForeColor="White" Height="27px" onclick="Button1_Click" 
                                    Text="Cancel" Width="62px" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" valign="top" align="center" bgcolor="#99CCFF" class="style19">
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                                    onclick="LinkButton3_Click" Font-Underline="False" ForeColor="Black">Are 
                                You New Member Visit Member Registation Page</asp:LinkButton>
                                <br />
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <Bewise:FlashControl ID="FlashControl2" runat="server" Height="260px" 
                        MovieUrl="~/Member site/flash/B 3.swf" style="margin-top: 0px" 
                        Width="234px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
        </tr>
        </table>
</asp:Content>

