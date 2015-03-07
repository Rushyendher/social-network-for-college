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
    public partial class FacultySettings : System.Web.UI.Page
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
                string query = "UPDATE registration SET NAME = @NAME, PWD = @PWD, MOBILE = @MOBILE WHERE USERID = @USERID";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                cmnd.Parameters.AddWithValue("@PWD", TextBox2.Text);
                cmnd.Parameters.AddWithValue("@MOBILE", TextBox3.Text);
                cmnd.Parameters.AddWithValue("@USERID", Session["ID"]);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if (result >= 1)
                {
                    Label1.Text = "Updated successfully";
                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}