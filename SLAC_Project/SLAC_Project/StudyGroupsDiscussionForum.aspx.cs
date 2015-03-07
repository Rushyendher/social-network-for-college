using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace SLAC_Project
{
    public partial class StudyGroupsDiscussionForum : System.Web.UI.Page
    {
        int rows = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_creategroup_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO GROUP2 VALUES(@GROUPNAME)";
                SqlCommand CMND = new SqlCommand(query, con);
                CMND.Parameters.AddWithValue("@GROUPNAME", txt_group_box.Text);
                con.Open();
                int result = CMND.ExecuteNonQuery();
                if (result >= 1)
                {
                    lb_err.Visible = true;
                    lb_err.Text = "created successfully";
                    lb_err.ForeColor = System.Drawing.Color.Green;
                    
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
                lb_err.Text = "Not created";
                lb_err.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO MEMBERS VALUES(@USERID,@GROUPNAME)";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@USERID", txt_addmemb.Text);
                cmnd.Parameters.AddWithValue("@GROUPNAME", txt_group_box.Text);
                con.Open();
                rows = cmnd.ExecuteNonQuery();
                if(rows >= 1)
                {
                    lb_mem.Text = "User added";

                }
                else
                {
                    lb_mem.Text = "User failed to add";
                }
            }
            catch(Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        protected void btn_postcontent_Click(object sender, EventArgs e)
        {

        }
    }
}