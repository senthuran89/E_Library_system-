using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Member_site_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uid"] = "";
        Panel1.Visible = false;
        Panel2.Visible = true ;

    }
    
  
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/MemberRegister.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Member site/MemberRegister.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true ;
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Member site/MemberRegister.aspx");
        Panel1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {
                SqlDataReader dr1 = BookOrder.Getview("SELECT Firstname,Username,Password,Memberid FROM Member where UserName='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Session["cname"] = dr1.GetValue(0).ToString();
                    Session["un"] = dr1.GetValue(1).ToString();
                    Label7.Text = dr1.GetValue(2).ToString();
                    Session["pw"] = dr1.GetValue(2).ToString();
                    Session["uid"] = dr1.GetValue(3).ToString();

                }

                if (Label7.Text == TextBox2.Text)
                {
                    Session["m2"] = "Dear :   " + Session["cname"] + "You Have Not Orders Visit to Book Order Pages";
                    Response.Redirect("~/Member site/Membership.aspx");
                    Session["ordernumber"] = 0;
                    Panel1.Visible = false;

                }

                else
                {
                    Label6.Text = "ReEnter Password And UserName";
                }
            }
            catch
            {
                Label6.Text = "Reenter Password And UserName";
            }
        }
        else
            Label6.Text = "Enter userName";
    }
}
