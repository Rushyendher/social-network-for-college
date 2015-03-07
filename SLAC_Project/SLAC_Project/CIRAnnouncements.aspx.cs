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
    public partial class CIRAnnouncements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_postcontent_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            DateTime dt = DateTime.Now;
            try
            {
                string query = "INSERT INTO ANNOUNCEMENTS VALUES(@CONTENT,@DATE_TIME)";
                SqlCommand cmnd = new SqlCommand(query, con);
                cmnd.Parameters.AddWithValue("@CONTENT", txt_content.Text);
                cmnd.Parameters.AddWithValue("@DATE_TIME",dt);
                int result = cmnd.ExecuteNonQuery();
                if(result >= 1)
                {
                    lb_err.Text = "Announced";
                    lb_err.ForeColor = System.Drawing.Color.Green;
                    txt_content.Text = "";
                }
            }
            catch(Exception ex)
            {
                lb_err.Text = ex.Message;
                lb_err.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }
    }
}