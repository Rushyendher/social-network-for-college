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
    public partial class Registration : System.Web.UI.Page
    {
        string name;
        void GetName()
        {
            if(rb_faculty.Checked == true)
            {
                name = rb_faculty.Text;
            }
            if(rb_student.Checked == true)
            {
                name = rb_student.Text;
            }
        }

        void Reset()
        {
            txt_userid.Text = "";
            txt_pwd.Text = "";
            txt_name.Text = "";
            txt_mobile.Text = "";
            txt_cnfpwd.Text = "";
            rb_faculty.Checked = false;
            rb_student.Checked = true;
            ddl_branches.SelectedValue = "-1";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            GetName();
            try
            {
                SqlCommand cmnd = new SqlCommand("UPDATE_REGISTERFORM", con);
                cmnd.CommandType = CommandType.StoredProcedure;
                cmnd.Parameters.AddWithValue("@USERID", txt_userid.Text);
                cmnd.Parameters.AddWithValue("@NAME", txt_name.Text);
                cmnd.Parameters.AddWithValue("@pwd", txt_pwd.Text);
                cmnd.Parameters.AddWithValue("@MOBILE", txt_mobile.Text);
                cmnd.Parameters.AddWithValue("@CATEGORY",name);
                cmnd.Parameters.AddWithValue("@DEPARTMENT", ddl_branches.SelectedItem.Text);

                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_error.Visible = true;
                    lb_error.Text = "Registration successfull...";
                    lb_error.ForeColor = System.Drawing.Color.Green;
                    Reset();
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    lb_error.Visible = true;
                    lb_error.Text = "Registration Failed...";
                    lb_error.ForeColor = System.Drawing.Color.Red;
                    Reset();
                }

            }
            catch(Exception ex)
            {
                lb_error.Visible = true;
                lb_error.Text = "Userid doesn't exist";
                lb_error.ForeColor = System.Drawing.Color.Red;
                Reset();
            }
            finally
            {
                con.Close();
            }
        }
    }
}