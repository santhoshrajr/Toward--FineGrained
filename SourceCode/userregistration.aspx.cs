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
using System.Data.SqlClient;
public partial class userregistration : System.Web.UI.Page
{
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmdse = new SqlCommand("select count(*) from userreg ", conn);
        number = (int)cmdse.ExecuteScalar();
        number = number + 1;
        conn.Close();
        TextBox1.Text = number.ToString();

    }
    public int number,no=1;

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into userreg values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Label8.Text = "Sucessfully Inserted";

    }
}
