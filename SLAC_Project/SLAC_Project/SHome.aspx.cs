using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace SLAC_Project.Student
{
    public partial class Home : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {      if (!IsPostBack)
            {
                getPostsAsyncronous();
               // GetUserName();

            }
      
        }

        private void GetUserName()
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                SqlCommand cmnd = new SqlCommand("select NAME from REGISTRATION where USERID = @USERID", con);
                cmnd.Parameters.AddWithValue("@USERID", Session["ID"]);
                con.Open();
                string name = (string)cmnd.ExecuteScalar();
                SqlDataReader dr = cmnd.ExecuteReader();
                if (dr.Read())
                {
                    lb_name.Text = name;
                }
                else
                {
                    lb_name.Text = "Welcome";
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
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
                string query = "SELECT * FROM WRITE_POSTS ORDER BY ID DESC";
                SqlCommand cmnd = new SqlCommand(query, conn);
                cmnd.Parameters.AddWithValue("@USERID", Session["ID"]);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SProfile.aspx");
        }

        
    }
}