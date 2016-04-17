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
public partial class requestfile : System.Web.UI.Page
{
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        method1();
    }
    public string staust = "Not Confrimed";
    public void method1()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select FileId,FileName,Filetype,Uploadname,Requestedname,RequestStatus from RequestFile where RequestStatus='" + staust + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
    public string con = "Not Confrimed";
    public string confirm = "Confrimed";
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow rows = (GridViewRow)GridView1.Rows[e.NewSelectedIndex];
        Label lbl = (Label)rows.FindControl("Label1");
        conn.Open();
        SqlCommand cmdin = new SqlCommand("update RequestFile set RequestStatus ='" + confirm + "' where FileId ='" + lbl.Text + "'", conn);
        cmdin.ExecuteNonQuery();
        conn.Close();
        method1();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
