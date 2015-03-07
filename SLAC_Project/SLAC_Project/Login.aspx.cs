using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SLAC_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                if(txt_userid.Text == "MNC.12022" && txt_pwd.Text=="12345")
                {
                    Response.Redirect("MaintananceGuyPage.aspx");
                }
                else
                {
                    SqlCommand cmnd = new SqlCommand("USER_LOGINUPDATED", con);
                    cmnd.CommandType = CommandType.StoredProcedure;
                    cmnd.Parameters.AddWithValue("@USERID", txt_userid.Text);
                    cmnd.Parameters.AddWithValue("@PWD", txt_pwd.Text);
                    Session["ID"] = txt_userid.Text;
                    con.Open();
                    string name = (string)cmnd.ExecuteScalar();
                    SqlDataReader dr = cmnd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (name == "FACULTY")
                        {
                            Response.Redirect("FacultyHome.aspx");
                        }
                        else
                        {
                            Response.Redirect("SHome.aspx");
                        }
                    }
                    else
                    {
                        txt_pwd.Text = "";
                        txt_userid.Text = "";
                        txt_userid.Focus();
                        lb_err.Visible = true;
                        lb_err.Text = "Login failed";
                        lb_err.ForeColor = System.Drawing.Color.Red;

                    }
                }
            }
            catch(Exception ex)
            {
                lb_err.Visible = true;
                lb_err.Text = "Login failed";
                lb_err.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }
    }
}