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
    public partial class MaintananceGuyClubRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "UPDATE REGISTRATION SET CLUBNAME = @CLUBNAME WHERE USERID = @USERID";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@CLUBNAME", ddl_selectclub.SelectedItem.Text);
                cmnd.Parameters.AddWithValue("@USERID", txt_id.Text);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_success.Text = "Registration done";
                    lb_success.ForeColor = System.Drawing.Color.Green;
                    txt_id.Text = "";
                    ddl_selectclub.SelectedValue = "-1";
                }
                else
                {
                    lb_success.Text = "Registration failed";
                    lb_success.ForeColor = System.Drawing.Color.Red;
                    txt_id.Text = "";
                    ddl_selectclub.SelectedValue = "-1";
                }

            }
            catch(Exception ex)
            {
                lb_success.Text = ex.Message;
                lb_success.ForeColor = System.Drawing.Color.Red;
                txt_id.Text = "";
                ddl_selectclub.SelectedValue = "-1";
            }
            finally
            {
                con.Close();
            }
        }
    }
}