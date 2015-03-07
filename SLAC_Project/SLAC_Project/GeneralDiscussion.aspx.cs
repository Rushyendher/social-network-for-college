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
    public partial class GeneralDiscussion : System.Web.UI.Page
    {
        int rows = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                try
                {
                    string query = "select * from TITLE1";
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddl_threadlist.DataSource = dt;
                    ddl_threadlist.DataBind();
                    ddl_threadlist.DataTextField = "TITLE";
                    ddl_threadlist.DataValueField = "TITLEID";
                    ddl_threadlist.DataBind();
                }
                catch (Exception ex)
                {

                }
            }
            if (!Page.IsPostBack)
            {
                GettiingData();
            }
        }

        protected void btn_createthread_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO TITLE1 VALUES(@TITLE)";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@TITLE", txt_thread_box.Text);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_err.Visible = true;
                    lb_err.Text = "created successfully";
                    lb_err.ForeColor = System.Drawing.Color.Green;
                    txt_thread_box.Text = "";
                    string query2 = "select * from TITLE1";
                    SqlDataAdapter da = new SqlDataAdapter(query2, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddl_threadlist.DataSource = dt;
                    ddl_threadlist.DataBind();
                    ddl_threadlist.DataTextField = "TITLE";
                    ddl_threadlist.DataValueField = "TITLEID";
                    ddl_threadlist.DataBind();
                }
                else
                {
                    lb_err.Visible = true;
                    lb_err.Text = "Not created";
                    lb_err.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch(Exception ex)
            {
                lb_err.Visible = true;
                lb_err.Text = ex.Message;
                lb_err.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btn_postcontent_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            DateTime dt = DateTime.Now;
            string tid = ddl_threadlist.Text;
            int t_id = Convert.ToInt32(tid);

            try
            {
                string query = "INSERT INTO FORUM2 VALUES(@TITLEID,@QUESTION,@USERID,@DATE_TIME)";
                SqlCommand cmnd = new SqlCommand(query, con);
                con.Open();
                cmnd.Parameters.AddWithValue("@TITLEID", t_id);
                cmnd.Parameters.AddWithValue("@QUESTION", txt_content.Text);
                cmnd.Parameters.AddWithValue("@USERID", Session["ID"]);
                cmnd.Parameters.AddWithValue("@DATE_TIME", dt);

                rows = cmnd.ExecuteNonQuery();
                if (rows >= 1)
                {
                    txt_content.Text = "";
                    string query2 = "SELECT QUESTION,USERID,DATE_TIME FROM FORUM2 WHERE TITLEID = @TITLEID";
                    SqlCommand cmnd2 = new SqlCommand(query2, con);
                    cmnd2.Parameters.AddWithValue("@TITLEID", ddl_threadlist.SelectedValue);
                    GridView1.DataSource = cmnd2.ExecuteReader();
                    GridView1.DataBind();
                }

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

       

        protected void ddl_threadlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            GettiingData();
        }

        public void GettiingData()
        {

            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query2 = "SELECT QUESTION,USERID,DATE_TIME FROM FORUM2 WHERE TITLEID = @TITLEID ORDER BY FORUMID DESC";
                SqlCommand cmnd2 = new SqlCommand(query2, con);
                con.Open();
                cmnd2.Parameters.AddWithValue("@TITLEID", ddl_threadlist.SelectedValue);
                GridView1.DataSource = cmnd2.ExecuteReader();
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
        

    }
}