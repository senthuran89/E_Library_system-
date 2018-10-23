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

public partial class Member_site_MemberRegister : System.Web.UI.Page
{
    DateTime dr4 = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label30.Text = "";
        Label31.Text = "";
        Label29.Text = "";
        Label28.Text = "";
        TextBox11.Text = dr4.ToString(); 
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            int val = int.Parse(BookOrder.getvalcount("Select Count (*) from Member where Username='" + TextBox12.Text.ToString() + "'"));

            int val1 = int.Parse(BookOrder.getvalcount("Select Count (*) from Member where Email='" + TextBox8.Text.ToString() + "'"));

            if (val1 == 0)
            {
                if (val == 0)
                {
                    if (CheckBox1.Checked == true)
                    {

                        if (TextBox13.Text == TextBox14.Text)
                            {
                                BookOrder.Addmember(1, TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DropDownList1.Text.ToString(), DropDownList2.Text.ToString(), TextBox4.Text.ToString(), TextBox8.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox5.Text.ToString(), TextBox9.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), DateTime.Parse(TextBox11.Text.ToString()), TextBox12.Text.ToString(), TextBox13.Text.ToString());
                                Label30.Text = "";
                                Label31.Text = "";
                                Label29.Text = "";
                                Label28.Text = "";
                                Session["m2"] = "";
                                Session["m1"] = "Dear :   " + TextBox1.Text.ToString() + "   Wait A Few Secound We Will Send A Reply For Your Conformation ";
                                Session["m2"] = "Dear :   " + TextBox1.Text.ToString() +"Welcome our site .your Are New member . ";
                                Session["cname"] = TextBox1.Text.ToString();
                                Session["uid"] = BookOrder.memberno.ToString(); 
                                Response.Redirect("~/Member site/Membership.aspx");

                            }
                            else
                            {
                                
                                Label30.Text = "Check Password ReEnter";
                            }
                                               
                    }
                    else
                        Label31.Text = "Checked the Agree Option";
                }
                else
                {
                    Label29.Text = "Available";
                }
            }
            else
            {
                Label28.Text = "Available";
            }
            
        }

        catch { }
        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox10.Text = Calendar1.SelectedDate.Date.ToString("MM/dd/yyyy");
        }
        catch { }
    }
    
}
