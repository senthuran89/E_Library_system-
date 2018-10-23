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

public partial class Member_site_Collection : System.Web.UI.Page
{
    public static  int orderid=0, bookid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            GridView2.Visible = false;
            Label7.Visible = false;
          //  Panel1.Visible = false;
            ////orderid = 0;
            ////Label8.Text = "0";
            
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            Session["cid"] = GridView1.SelectedRow.Cells[1].Text.ToString(); 
                      
                GridView2.Visible = true;
                Label7.Visible = true;
                      
          
        }
        catch
        {
        }
    }
    
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //if (orderid == 0)
        //{
        //    //Panel1.Visible = true;
       

        //}
        //else
        //{
        //    BookOrder.AddBookorder1(orderid, int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString()));
        //    Panel1.Visible = true;
        //    Label8.Text = BookOrder.orderno.ToString();
        //    Session["ordernumber"] = int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString()); 
        //}
    }
   
    
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

       
        orderid = int.Parse (BookOrder.orderno.ToString());
        BookOrder.AddBookorder(1, int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString()));
        Label8.Text = BookOrder.orderno.ToString();
        Session["ordernumber"] = int.Parse(Label8.Text.ToString ());
      Label9.Text = Session["uid"].ToString();
      if (Label9.Text.Length == 0)
      {
          Response.Redirect("~/Member site/Login.aspx");
      }
      else
      {
          Session["m2"] = "Dear :   " + Session["cname"] + "your Are Order This Book .if you Lend The Book Click to Conform your Lending Else Click to Reorder ";

          Session["m1"] = "Dear :   " + Session["cname"] + "   Wait A Few Secound We Will Send A Reply For Your Lend";
          Response.Redirect("~/Member site/Membership.aspx");
      }


    }
}
