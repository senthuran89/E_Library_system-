﻿using System;
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

public partial class Admin_memberLending : System.Web.UI.Page
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
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                  

                }
            }
        }
        catch
        {
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["mid1"] = TextBox1.Text.ToString();
        Response.Redirect("~/Admin/lendpage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try {

            SqlDataReader dr1 = BookOrder.Getview("SELECT Memberid from Member where UserName='" + DropDownList1 .Text.ToString() + "'");
            while (dr1.Read())
            {
                //Label3.Text = dr1.GetValue(0).ToString();
                Session["mid1"] = dr1.GetValue(0).ToString();
                TextBox1.Text = dr1.GetValue(0).ToString();
            }

       Response.Redirect("~/Admin/lendpage.aspx");

        }
        catch { }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
