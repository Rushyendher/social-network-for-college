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
    public partial class MaintenanceRegisterYourID : System.Web.UI.Page
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
                string query = "INSERT INTO REGISTRATION (USERID, CATEGORY) VALUES(@USERID,@CATEGORY)";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@USERID", txt_id.Text);
                cmnd.Parameters.AddWithValue("@CATEGORY", ddl_category.SelectedItem.Text);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_success.Text = "Registration done.";
                    lb_success.ForeColor = System.Drawing.Color.Green;
                    txt_id.Text = "";
                    ddl_category.SelectedValue = "-1";
                }
                else
                {
                    lb_success.Text = "Registration failed.";
                    lb_success.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch(Exception ex)
            {
                lb_success.Text = "Registration failed.";
                lb_success.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }
    }
}