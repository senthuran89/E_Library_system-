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

public partial class Adminlogon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {

                SqlDataReader dr1 = BookOrder.Getview("SELECT Passwords FROM Admin1 where UserName='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                   
                    Label7.Text = dr1.GetValue(0).ToString();
                

                }

                if (Label7.Text == TextBox2.Text)
                {
                    
                    Response.Redirect("~/Admin/Memberorderview.aspx");

                   

                }

                else
                {
                    Label8.Text = "ReEnter Password And UserName";
                }
            }
            catch
            {
                Label8.Text = "ReEnter Password And UserName";
            }
        }
        else
            Label8.Text = "Enter userName";
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
            TextBox2 .Text ="";
    }
}
