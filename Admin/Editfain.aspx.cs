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

public partial class Admin_Editfain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = payments.Getdetail("select Fainrate,Description,Fainid from Fain where days='" + TextBox1.Text.ToString() + "'");
        while (dr.Read())
        {


            TextBox2.Text = dr.GetValue(0).ToString();
            TextBox3.Text = dr.GetValue(1).ToString();
            TextBox4.Text = dr.GetValue(2).ToString();

        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //payments.editfaindetails(int.Parse(TextBox1.Text.ToString()), float.Parse(TextBox2.Text.ToString()));
        try {
            payments.editfaindetails(int.Parse(TextBox4.Text.ToString()), float.Parse(TextBox2.Text.ToString()));
            Label6.Text = "Updated Sucessed"; 
        }

        
        catch {}
    }
}
