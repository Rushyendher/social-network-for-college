using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SLAC_Project
{
    public partial class CIR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                WriteExam();
                GetCompanyPapers();
                Announcements();
            }
        }



        private void GetCompanyPapers()
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "select ID,COMPANYPAPER FROM UPLOADS2";
                SqlCommand cmnd = new SqlCommand(query, con);
                con.Open();
                GridView2.DataSource = cmnd.ExecuteReader();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        private void WriteExam()
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "select TESTNAME from CONDUCTEXAM";
                SqlCommand cmnd = new SqlCommand(query, con);
                con.Open();
                GridView1.DataSource = cmnd.ExecuteReader();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        private void Announcements()
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "SELECT * FROM ANNOUNCEMENTS";
                SqlCommand cmnd = new SqlCommand(query, con);

                con.Open();
                GridView3.DataSource = cmnd.ExecuteReader();
                GridView3.DataBind();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        protected void lnKEXAM_Click(object sender, EventArgs e)
        {
            Response.Redirect("WriteOnlineExam.aspx");
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string CS = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select NAME,CONTENT,DATA from UPLOADS2 where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["DATA"];
                        contentType = sdr["CONTENT"].ToString();
                        fileName = sdr["NAME"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
    }
}