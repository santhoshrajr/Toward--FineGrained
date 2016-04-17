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

public partial class graph : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("sreversucesspage.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            //Image2.Visible = true;
            //Image2.ImageUrl = "67.jpg";
            method2();

        }
        if (DropDownList1.SelectedIndex == 2)
        {
            //Image2.Visible = true;
            //Image2.ImageUrl = "76.jpg";
            method1();
        }
    }
    public SqlConnection conn = new SqlConnection("Data Source=VIKRAM;Initial Catalog=towardsfine;integrated security = true");
    public void method1()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from fileuploadlist where FileiSize > 10000", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }

    public void method2()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from fileuploadlist where FileiSize < 10000", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
}
