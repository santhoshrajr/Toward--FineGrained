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

public partial class filedownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        method();
    }
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    protected void gvDetails_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dwn")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvDetails.Rows[index];
            Label lbl = (Label)row.FindControl("Label2");
            
            conn.Open();
            SqlCommand cmds = new SqlCommand("select count(*) from Downloadlist ", conn);
            int j = (int)cmds.ExecuteScalar();
            conn.Close();
            j= j+1;
            conn.Open();
            SqlCommand cmdinser = new SqlCommand("insert into Downloadlist values('" + j + "','" + lbl.Text + "','" + Session["uname"].ToString() + "')", conn);
            cmdinser.ExecuteNonQuery();
            conn.Close();
            string fName = lbl.Text;
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + fName);
            Response.TransmitFile(Server.MapPath("~\\data\\" + fName));
            Response.End();



        }
    }
    public string name, requeststauts;
    public void method()
    {
        name= Session["uname"].ToString();
        requeststauts="Confrimed";
        conn.Open();
        SqlCommand cmdf = new SqlCommand("select FileId,FileName,Filetype,Uploadname from RequestFile  where RequestStatus='"+requeststauts+"' and Requestedname='"+name+"'", conn);
        SqlDataAdapter dr = new SqlDataAdapter(cmdf);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
        conn.Close();

    }
}
