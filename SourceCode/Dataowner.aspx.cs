﻿using System;
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
using System.Data.SqlClient;
public partial class Dataowner : System.Web.UI.Page
{
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label4.Text = "All fields are Mandatory";
        }
        else
        {
            Session["unaem"] = TextBox1.Text;
            conn.Open();
            SqlCommand cmdselect = new SqlCommand("select count(*) from ownerregis where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", conn);
            int count = (int)cmdselect.ExecuteScalar();
            if (count == 0)
            {
                Label4.Text = "Invaild User";
            }

            else
            {
                Response.Redirect("dataownerhome.aspx");
            }
            conn.Close();
        }

    }
}
