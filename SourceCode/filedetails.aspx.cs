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
public partial class filedetails : System.Web.UI.Page
{
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow rows = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbl = (Label)rows.FindControl("Label1");
       // int s = lbl.Text; 
        conn.Open();
        SqlCommand cmddelete = new SqlCommand("delete from fileuploadlist where FileId='" + lbl.Text + "'", conn);
        cmddelete.ExecuteNonQuery();
        conn.Close();
        bind();

    }
    public void bind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select FileId,FileName,Filetype,Uploadname from fileuploadlist where Uploadname='" + Session["unaem"].ToString() + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();

    }

}
