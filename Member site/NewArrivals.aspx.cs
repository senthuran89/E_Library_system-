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

public partial class Member_site_NewArrivals : System.Web.UI.Page
{
    int orderid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/Membership.aspx");
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            orderid = int.Parse(BookOrder.orderno.ToString());
            BookOrder.AddBookorder(1, int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString()));
            Label12.Text = BookOrder.orderno.ToString();
            Session["ordernumber"] = int.Parse(Label12.Text.ToString());
            Label13.Text = Session["uid"].ToString();
            if (Label13.Text.Length == 0)
            {
                Response.Redirect("~/Member site/Login.aspx");
            }
            else
                Response.Redirect("~/Member site/Membership.aspx");

        }
        catch
        { }
    }
   
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        try
        {

            orderid = int.Parse(BookOrder.orderno.ToString());
            BookOrder.AddBookorder(1, int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString()));
            Label12.Text = BookOrder.orderno.ToString();
            Session["ordernumber"] = int.Parse(Label12.Text.ToString());
            Label13.Text = Session["uid"].ToString();
            if (Label13.Text.Length == 0)
            {
                Response.Redirect("~/Member site/Login.aspx");
            }
            else
                Response.Redirect("~/Member site/Membership.aspx");

        }
        catch
        { }
    }
}
