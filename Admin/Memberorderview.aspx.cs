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

public partial class Admin_Memberorderview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        Session["mmid"] = int.Parse(GridView1.SelectedRow.Cells[2].Text.ToString());
        Session["bbid"] = int.Parse(GridView1.SelectedRow.Cells[3].Text.ToString());
        Session["mn"] = GridView1.SelectedRow.Cells[5].Text.ToString();
        Session["oidd"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/Showonbookordermemberandbook.aspx");
    }
}
