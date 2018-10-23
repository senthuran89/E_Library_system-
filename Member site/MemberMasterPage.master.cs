using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Member_site_MemberMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Label3.Text = "Dear :   " + Session["cname"] + " You Are Log On Now";
    }

    public string logMessage1
    {

        set { Label3.Text = value; }

    }

    public string logMessage
    {

        set { LinkButton1 .Text= value; }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
        Session["cname"] = "";
        Label3.Text = "Dear :   " + Session["cname"] + "Log out your Lending"; 
        Response.Redirect("~/Member site/Home.aspx");
          
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      
        Session["cname"] = "";
        Label3.Text = "Dear :   " + Session["cname"] + "Log out your Lending"; 
        Response.Redirect("~/Member site/Home.aspx");
    }
}
