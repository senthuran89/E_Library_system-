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

public partial class Member_site_Membership : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet dataSet = Bookview.GetOrderview();
        //GridView1.DataSource = dataSet.Tables["Bookview5"];
        //DataBind();
        DateTime d2 = DateTime.Now;
        //Label6.Text = Session["ordernumber"].ToString();
       Label5.Text = Session["m2"].ToString();
       //if (int.Parse (Label6.Text.ToString ()) == 0)
       //{
       //    GridView1.Visible = false;

       //}
       //else
       //    GridView1.Visible = true;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
             DateTime d2 = DateTime.Now;   
        Label5.Text = Session["m1"].ToString();
           // Label13 .Text ="Dear :  " + Session["cname"] + "Your Order Sueesfully Send to Admin Wais a few Secound ther are Reply For ur order";
            BookOrder.Addorder(1, int.Parse(Session["ordernumber"].ToString()), int.Parse(Session["uid"].ToString()), d2);
        Session["oids"] = BookOrder.orderid.ToString();
        Label12.Text ="Dear :  " + Session["cname"] + "Your order Number is"+ Session ["oids"]+"Plase Note This Order ID";  
        }
        catch {}
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/Search.aspx");
        Session["ordernumber"] = 0;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/Lendview.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/returnView.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/MemberPaymentview .aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member site/Fineview.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        SqlDataReader dr1 = BookOrder.Getview("SELECT Description FROM Order1 where Orderid='" + TextBox1.Text.ToString() + "'  and Memberid='" + Session["uid"].ToString() + "' ");
        while (dr1.Read())
        {
           
            Label10.Text = dr1.GetValue(0).ToString();
            
        }

    }
}
