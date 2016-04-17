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

public partial class sreversucesspage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("graph.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Panel2.Visible = true;
        method1();
        

    }
    public void method1()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from ownerregis", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
       conn.Open();
        SqlCommand cmd = new SqlCommand("select * from RequestFile", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        conn.Close();

    }
}
