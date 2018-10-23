using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Member_site_Bookview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
       
    }
    protected void DetailsView1_PageIndexChanged(object sender, EventArgs e)
    {
 
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/Search.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            BookOrder.AddBookorder(1, int.Parse(Session["bid"].ToString()));
            Session["ordernumber"] = int.Parse(BookOrder.orderno.ToString());
           // Response.Redirect("~/Member site/Login.aspx");
            Label6.Text = Session["uid"].ToString();
            if (Label6.Text.Length == 0)
            {
                Response.Redirect("~/Member site/Login.aspx");
            }
            else {
                Session["m2"]= "Dear :   " + Session["cname"] + "your Are Order This Book .if you Lend The Book Click to Conform your Lending Else Click to Reorder ";
           
                Session["m1"] = "Dear :   " + Session["cname"] + "   Wait A Few Secound We Will Send A Reply For Your Lend";

                Response.Redirect("~/Member site/Membership.aspx");
            }

        }
        catch { 
        }
        
    }
}
