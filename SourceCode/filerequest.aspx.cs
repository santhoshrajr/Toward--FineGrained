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
public partial class filerequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    public void bind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select FileId,FileName,Filetype,Uploadname from fileuploadlist", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    public string name,request,requeststatus,filepath;
    public int j;
    protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        requeststatus = "Not Confrimed";
        conn.Open();
        SqlCommand cmds = new SqlCommand("select count(*) from RequestFile", conn);
        j = (int)cmds.ExecuteScalar();
        conn.Close();
        j = j + 1;
        request = "Request Sent";
        name = Session["uname"].ToString();
        GridViewRow rows = (GridViewRow)GridView1.Rows[e.NewSelectedIndex];
        Label lbl = (Label)rows.FindControl("Label2");
        Label lbl1 = (Label)rows.FindControl("Label1");
        Label lbl2 = (Label)rows.FindControl("Label3");
        Label lbl3 = (Label)rows.FindControl("Label4");
        conn.Open();
        SqlCommand cmdselect = new SqlCommand("select Filepath from fileuploadlist where FileName='" + lbl1.Text + "'", conn);
        SqlDataReader dr = cmdselect.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                filepath = dr[0].ToString();
            }
        }
        conn.Close();
        conn.Open();
        SqlCommand cmdinsert = new SqlCommand("insert into RequestFile values('" + j + "','" + lbl1.Text + "','" + lbl2.Text + "','" + lbl3.Text + "','" + Session["uname"].ToString() + "','"+requeststatus+"','"+filepath+"')", conn);
        cmdinsert.ExecuteNonQuery();
        conn.Close();
        Label5.Text = "Request Send Sucessfully";
        

    }
}
