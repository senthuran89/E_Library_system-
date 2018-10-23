using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Member_site_Search : System.Web.UI.Page
{
     public static  int orderid=0, bookid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel1.Visible = false;
        Session["m1"] = "";
        GridView3.Visible = false ;
        GridView2.Visible = false;
        GridView1.Visible = false;
        GridView4.Visible = false;
       // Session["uid"] = 0;
        //GridView1.Visible = false;
        //GridView2.Visible = false;
        try
        {
            if (!IsPostBack)
            {
                SqlDataReader dr = BookOrder.Getview("SELECT Bookname,Publication,Authername1 FROM bookview");
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                                        DropDownList3.Items.Add(dr.GetValue(1).ToString());
                                        DropDownList2.Items.Add(dr.GetValue(2).ToString());
                                        

                }
                           }
        }
        catch
        {
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }

    protected void Find_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        Response.Redirect("~/Member site/Bookview.aspx");
        //Label8.Text = BookOrder.orderno.ToString();
        //orderid = int.Parse(BookOrder.orderno.ToString());
        //Panel1.Visible = true;
       
        //BookOrder.AddBookorder(1, int.Parse(GridView1.SelectedRow.Cells[2].Text.ToString()));
        //Session["ordernumber"] = int.Parse(Label8.Text.ToString());
        ////Label13.Text = Session["uid"].ToString();
        ////if (Label13.Text.Length == 0)
        ////{
        //    Response.Redirect("~/Member site/Login.aspx");
        ////}
        ////else
        ////    Response.Redirect("~/Member site/Membership.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
    //Label8.Text = BookOrder.orderno.ToString();
    //orderid = int.Parse(BookOrder.orderno.ToString());
    //Panel1.Visible = true;

    //BookOrder.AddBookorder(1, int.Parse(GridView2.SelectedRow.Cells[2].Text.ToString()));
    //Session["ordernumber"] = int.Parse(Label8.Text.ToString());
    //Label13.Text = Session["uid"].ToString();
    //if (Label13.Text.Length == 0)
    //{

        Session["bid"] = int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString());
        Response.Redirect("~/Member site/Bookview.aspx");
        //}
        //else
        //    Response.Redirect("~/Member site/Membership.aspx");
    }
   
    protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //Label8.Text = BookOrder.orderno.ToString();
        //orderid = int.Parse(BookOrder.orderno.ToString());
        //Panel1.Visible = true;

        //BookOrder.AddBookorder(1, int.Parse(GridView3.SelectedRow.Cells[2].Text.ToString()));
        //Session["ordernumber"] = int.Parse(Label8.Text.ToString());
        //Label13.Text = Session["uid"].ToString();
        //if (Label13.Text.Length == 0)
        //{
        //    Response.Redirect("~/Member site/Login.aspx");
        //}
        //else
        //    Response.Redirect("~/Member site/Membership.aspx");
        Session["bid"] = int.Parse(GridView3.SelectedRow.Cells[1].Text.ToString());
        Response.Redirect("~/Member site/Bookview.aspx");
    }
    protected void GridView4_SelectedIndexChanged1(object sender, EventArgs e)
    {
    //    Label8.Text = BookOrder.orderno.ToString();
    //    orderid = int.Parse(BookOrder.orderno.ToString());
    //    Panel1.Visible = true;

    //    BookOrder.AddBookorder(1, int.Parse(GridView4.SelectedRow.Cells[2].Text.ToString()));
    //    Session["ordernumber"] = int.Parse(Label8.Text.ToString());
    //    //Label13.Text = Session["uid"].ToString();
    //    //if (Label13.Text.Length == 0)
    //    //{
    //        Response.Redirect("~/Member site/Login.aspx");
    ////    }
    ////    else
    ////        Response.Redirect("~/Member site/Membership.aspx");
        Session["bid"] = int.Parse(GridView4.SelectedRow.Cells[1].Text.ToString());
        Response.Redirect("~/Member site/Bookview.aspx");
   }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //SqlDataReader dr = BookOrder.Getview("SELECT Bookid FROM bookview where Bookname=' " + DropDownList1.SelectedItem .ToString () + "'");
        //while (dr.Read())
        //{
        //    Session["bid"] = int.Parse (dr.GetValue(0).ToString());
        //    GridView1.Visible = true;
        //}
        GridView1.Visible = true;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        // Label12.Visible = false;
        string Bookname = DropDownList1.Text.ToString();
        Session["bname"] = DropDownList1.Text.ToString();
        //DataSet dataSet = Bookview.GetBookarivals(Bookname);
        //GridView1.DataSource = dataSet.Tables["Bookviews"];
        //DataBind();

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        GridView2.Visible = true;
        GridView1.Visible = false ;
        GridView3.Visible = false;
        GridView4.Visible = false;
        // Label12.Visible = false;
        string auther1 = DropDownList2.Text.ToString();
        Session["auther"] = DropDownList2.Text.ToString();
        //DataSet dataSet = Bookview.GetBookdetailstoAother(auther1);
        //GridView2.DataSource = dataSet.Tables["Bookview1"];
        //DataBind();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        GridView3.Visible = true;
        GridView2.Visible = false;
        GridView1.Visible = false;
        GridView4.Visible = false;
        string publication = DropDownList3.Text.ToString();
        Session["pul"] = DropDownList3.Text.ToString();

       /// DataSet dataSet = Bookview.GetBookdetailstopublication(publication);
        //GridView3.DataSource = dataSet.Tables["Bookview2"];

       // DataBind();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        GridView4.Visible = true;
        GridView2.Visible = false;
        GridView1.Visible = false;
        GridView3.Visible = false;
        string isbn = TextBox1.Text.ToString();
        Session["isbn"] = TextBox1.Text.ToString();

        //DataSet dataSet = Bookview.GetBookdetailstoisbn(isbn);
        //GridView4.DataSource = dataSet.Tables["Bookview3"];
        //DataBind();
    }
}
