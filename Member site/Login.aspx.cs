using System;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Member_site_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/MemberRegister.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = ""; 
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {

                SqlDataReader dr1 = BookOrder.Getview("SELECT Firstname,Username,Password,Memberid FROM Member where UserName='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                    //Label3.Text = dr1.GetValue(0).ToString();
                    Session["cname"] = dr1.GetValue(0).ToString();
                    Session["un"] = dr1.GetValue(1).ToString();
                  
                   Label7 .Text = dr1.GetValue(2).ToString();
                   Session["uid"] = dr1.GetValue(3).ToString();

                }

                if (Label7.Text == TextBox2.Text)
                {
                    Session["m2"] = "Dear :   " + Session["cname"] + "your Are Order This Book .if you Lend The Book Click to Conform your Lending Else Click to Reorder ";
                    Session["m1"] = "Dear :   " + Session["cname"] + "   Wait A Few Secound We Will Send A Reply For Your Lend";
                    //Response.Redirect("~/Customer/OrderStatus.aspx");
                    Response.Redirect("~/Member site/Membership.aspx");
                   
                   // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

                }

                else
                {
                    Label8.Text = "ReEnter Password And UserName";
                }
            }
            catch
            {
                Label8.Text = "ReEnter Password And UserName";
            }
        }
        else
            Label8.Text = "Enter userName";
        
    }
}
