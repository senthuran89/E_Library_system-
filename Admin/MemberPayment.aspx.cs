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

public partial class Admin_MemberPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                SqlDataReader dr = BookOrder.Getview("SELECT Username FROM Member");
                while (dr.Read())
                {
                    DropDownList2.Items.Add(dr.GetValue(0).ToString());


                }
            }
        }
        catch
        {
        }
        DateTime dr3= DateTime.Now;
        TextBox3.Text = dr3.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try {
            payments.addpayment(1, int.Parse(TextBox1.Text.ToString()), double.Parse(TextBox4.Text.ToString()), DateTime.Parse(TextBox3.Text.ToString()), DropDownList1.Text.ToString(), TextBox6.Text.ToString(), DateTime.Parse(TextBox5.Text.ToString()));
            Label8.Text = "Saved Sucessed"; 
        }
        catch { }

         // payments.addpayment(1,int.Parse (TextBox1 .Text.ToString ()),  double.Parse(TextBox4.Text.ToString()), TextBox6.Text.ToString(), DropDownList1.Text.ToString(), DateTime.Parse(TextBox3.Text.ToString()), DateTime.Parse(TextBox5.Text.ToString()));
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        try
        {

            SqlDataReader dr1 = BookOrder.Getview("SELECT Memberid from Member where UserName='" + DropDownList2.Text.ToString() + "'");
            while (dr1.Read())
            {
                //Label3.Text = dr1.GetValue(0).ToString();
               // Session["mid1"] = dr1.GetValue(0).ToString();
                TextBox1.Text = dr1.GetValue(0).ToString();
            }

           // Response.Redirect("~/Admin/lendpage.aspx");

        }
        catch { }
    }
}
