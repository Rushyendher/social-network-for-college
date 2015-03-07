using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace SLAC_Project
{
    public partial class Face : System.Web.UI.Page
    {
        int likes = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getPostsAsyncronous();
            }
        }

        protected void btn_postevent_Click(object sender, EventArgs e)
        {

            string filePath = FileUpload1.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;
            DateTime dt = DateTime.Now;
            string sdate = dt.ToShortDateString();

            switch (ext)
            {
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
            }

            try
            {
                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                //insert the file into database
                string strQuery = "INSERT INTO CLUBEVENT1 VALUES(@CLUBNAME,@POSTTEXT,@NAME,@CONTENTTYPE,@DATA,@LIKES,@TIMEOFPOST)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.AddWithValue("@CLUBNAME","FACE");
                cmd.Parameters.AddWithValue("@POSTTEXT", txt_writeevent.Text);
                cmd.Parameters.Add("@NAME", SqlDbType.VarChar).Value = filename;
                cmd.Parameters.Add("@CONTENTTYPE", SqlDbType.VarChar).Value
                  = contenttype;
                cmd.Parameters.Add("@DATA", SqlDbType.Binary).Value = bytes;
                cmd.Parameters.AddWithValue("@LIKES", likes);
                cmd.Parameters.AddWithValue("@TIMEOFPOST", dt);
                InsertUpdateData(cmd);
                lb_success.ForeColor = System.Drawing.Color.Green;
                lb_success.Text = "File Uploaded Successfully";
                getPostsAsyncronous();
            }
            catch (Exception ex)
            {
                lb_success.ForeColor = System.Drawing.Color.Red;
                lb_success.Text = "File format not recognised.";
            }
            finally
            {

            }
        }

        private Boolean InsertUpdateData(SqlCommand cmd)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                return false;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        private void getPostsAsyncronous()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            try
            {
                string query = "SELECT * FROM CLUBEVENT1 WHERE CLUBNAME = @CLUBNAME ORDER BY TIMEOFPOST DESC";
                SqlCommand cmnd = new SqlCommand(query, conn);
                cmnd.Parameters.AddWithValue("@CLUBNAME", "FACE");
                GridView1.DataSource = cmnd.ExecuteReader();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
        }
    }
}