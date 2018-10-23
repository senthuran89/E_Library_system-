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

public partial class Admin_Returnpage : System.Web.UI.Page
{DateTime dr3 = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["mmid"] = int.Parse(GridView1.SelectedRow.Cells[7].Text.ToString());
        Session["bbid"] = int.Parse(GridView1.SelectedRow.Cells[2].Text.ToString());
        Session["mn"] = GridView1.SelectedRow.Cells[3].Text.ToString();
        Session["oidd"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["gd"] = DateTime .Parse(GridView1.SelectedRow.Cells[5].Text.ToString());
        TextBox1.Text = Session["oidd"].ToString();
        TextBox2.Text = Session["gd"].ToString();
        TextBox3.Text = dr3.ToShortDateString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        SqlDataReader dr = payments.Getdetail("select Fainrate from Fain where days='" + TextBox8.Text.ToString() + "'");
        while (dr.Read())
        {


            TextBox4.Text = dr.GetValue(0).ToString();
            TextBox6.Text = dr.GetValue(0).ToString();

        }
        }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            payments.addfain(1, double.Parse(TextBox6.Text.ToString()), TextBox7.Text.ToString(), int.Parse(Session["mmid"].ToString()));
            Session["fid1"] = payments.fid.ToString();
            adminfunctions.addReturn(int.Parse(Session["oidd"].ToString()), DateTime.Parse(TextBox2.Text.ToString()), TextBox7.Text.ToString(), 1);
            Label10.Text = "Saved Sucessed ";
        }
        catch { }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Showonbookordermemberandbook.aspx");
    }
}

