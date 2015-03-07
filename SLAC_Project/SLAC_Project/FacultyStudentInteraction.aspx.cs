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
    public partial class FacultyStudentInteraction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                try
                {
                    string query2 = "SELECT FACULTYID,QUESTION,DATE_TIME,REPLY FROM FSINTERACTION WHERE USERID = @USERID";
                    SqlCommand cmnd2 = new SqlCommand(query2, con);
                    con.Open();
                    cmnd2.Parameters.AddWithValue("@USERID", Session["ID"]);
                    GridView1.DataSource = cmnd2.ExecuteReader();
                    GridView1.DataBind();
                }
                catch(Exception ex)
                {

                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void btn_postcontent_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            DateTime dt = DateTime.Now;
            try
            {
                string query = "INSERT INTO  FSINTERACTION VALUES (@FACULTYID,@QUESTION,@USERID,@REPLY,@DATE_TIME)";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@FACULTYID", txt_facultyid.Text);
                cmnd.Parameters.AddWithValue("@QUESTION", txt_content.Text);
                cmnd.Parameters.AddWithValue("@USERID", Session["ID"]);
                cmnd.Parameters.AddWithValue("@REPLY", "");
                cmnd.Parameters.AddWithValue("@DATE_TIME", dt);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_err.Text = "Posted to faculty";
                    lb_err.ForeColor = System.Drawing.Color.Green;
                    txt_content.Text = "";
                    txt_facultyid.Text = "";

                    string query2 = "SELECT FACULTYID,QUESTION,DATE_TIME,REPLY FROM FSINTERACTION WHERE USERID = @USERID";
                    SqlCommand cmnd2 = new SqlCommand(query2, con);
                    cmnd2.Parameters.AddWithValue("@USERID", Session["ID"]);
                    GridView1.DataSource = cmnd2.ExecuteReader();
                    GridView1.DataBind();

                }
                else
                {
                    lb_err.Text = "Posting failed";
                    lb_err.ForeColor = System.Drawing.Color.Red;
                    txt_content.Text = "";
                    txt_facultyid.Text = "";

                }
            }
            catch(Exception ex)
            {
                lb_err.Text = ex.Message;
                lb_err.ForeColor = System.Drawing.Color.Red;
                txt_content.Text = "";
                txt_facultyid.Text = "";
            }
            finally
            {
                con.Close();
            }
        }
    }
}