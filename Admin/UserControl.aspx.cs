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

public partial class Admin_UserControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        try
        {
            int val = int.Parse(BookOrder.getvalcount("Select Count (*) from Admin1 where Username='" + TextBox1.Text.ToString() + "'"));

            int val1 = int.Parse(BookOrder.getvalcount("Select Count (*) from Admin1 where Username='" + TextBox1.Text.ToString() + "'"));

            if (val1 == 0)
            {
                if (val == 0)
                {
                   
                        if (TextBox4.Text == TextBox5.Text)
                        {
                            //BookOrder.Addmember(1, TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DropDownList1.Text.ToString(), DropDownList2.Text.ToString(), TextBox4.Text.ToString(), TextBox8.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox5.Text.ToString(), TextBox9.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), DateTime.Parse(TextBox11.Text.ToString()), TextBox12.Text.ToString(), TextBox13.Text.ToString());
                            //Label30.Text = "";
                            //Label31.Text = "";
                            //Label29.Text = "";
                            //Label28.Text = "";
                            //Session["m2"] = "";
                            //Session["m1"] = "Dear :   " + TextBox1.Text.ToString() + "   Wait A Few Secound We Will Send A Reply For Your Conformation ";
                            //Response.Redirect("~/Member site/Membership.aspx");
                            //Session["m2"] = "Dear :   " + TextBox1.Text.ToString() + "Welcome our site .your Are New member . ";
                            //Session["cname"] = TextBox1.Text.ToString();
                            adminfunctions.adduser(DateTime.Parse(TextBox2.Text.ToString()), int.Parse(TextBox3.Text.ToString()), TextBox1.Text.ToString(), TextBox4.Text.ToString());
                            Label7.Text = "";
                            Label8.Text = "";
                            Label9.Text = "Saved sucessed";
                        }
                        else
                        {

                            Label8.Text = "Check Password ReEnter";
                        }

                                    }
                else
                {
                    Label7.Text = "Available";
                }
            }
            else
            {
                Label7.Text = "Available";
            }

        }
         

        catch { }
           
    
    }
}
