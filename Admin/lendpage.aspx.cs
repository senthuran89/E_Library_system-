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

public partial class Admin_lendpage : System.Web.UI.Page
{
    DateTime dr2 = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["mmid"] = int.Parse(GridView1.SelectedRow.Cells[2].Text.ToString());
        Session["bbid"] = int.Parse(GridView1.SelectedRow.Cells[5].Text.ToString());
        Session["mn"] = GridView1.SelectedRow.Cells[1].Text.ToString();
        Session["oidd"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        TextBox1.Text = Session["oidd"].ToString();
        TextBox2.Text =  dr2.ToLongDateString();
        TextBox3.Text = dr2.ToShortDateString();
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Showonbookordermemberandbook.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try { 
             adminfunctions.addlending(int.Parse(TextBox1.Text.ToString()), DateTime.Parse(TextBox2.Text.ToString()), DateTime.Parse(TextBox3.Text.ToString()), TextBox4.Text.ToString());

             Label7.Text = "Saved Sucessed";
        }
      catch {
      }
       
    
    }
}
