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
using System.IO;
using System.Xml.Linq;

public partial class fileupload : System.Web.UI.Page
{
    public int j;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmds = new SqlCommand("select count(*) from fileuploadlist", conn);
        j = (int)cmds.ExecuteScalar();
        conn.Close();
        j = j + 1;
        Label4.Text = j.ToString();

    }
    static string conString = ConfigurationManager.ConnectionStrings["conStringFine"].ToString();
    public SqlConnection conn = new SqlConnection(conString);
    public string t, ty, f, k, m, strFile, lin;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label3.Text = "All Fileds Are mandatory ";
        }
        else
        {
            Random rn = new Random();
            int n = rn.Next(1111, 10000);

            t = FileUpload1.FileName;
            ty = Path.GetExtension(FileUpload1.FileName);
            f = Path.GetFileNameWithoutExtension(FileUpload1.FileName);

            FileUpload1.SaveAs(Server.MapPath("~/data/") + FileUpload1.FileName);
            // CreateAttachment(FileUpload1.FileName);
            //string re = Server.MapPath("~/data/") + strFile;
            //FileStream objFileStream = new FileStream(f, FileMode.Open, FileAccess.Read);

            m = Server.MapPath("~/upload/");
            k = m + f + ".jar";
            lin = m + f;
            string name = Session["unaem"].ToString(); ;
            FileStream outFile = new FileStream(k, FileMode.Create, FileAccess.Write);
            strFile = FileUpload1.FileName;
            StreamWriter writer = new StreamWriter(outFile);
            string re = Server.MapPath("~/data/") + strFile;
            FileStream objFileStream = new FileStream(re, FileMode.Open, FileAccess.Read);
            int intLength = Convert.ToInt32(objFileStream.Length);
            byte[] objData;
            objData = new byte[intLength];

            writer.Close();


            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into fileuploadlist values('" + j + "','" + t + "','" + intLength + "','" + lin + "','" + ty + "','" + name + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label3.Text = "Sucessfully Uploaded";
        }
    }
}
