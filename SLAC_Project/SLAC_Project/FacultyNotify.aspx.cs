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
    public partial class FacultyNotify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt_date.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btn_notify_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string QUERY = "INSERT INTO faculty_notify VALUES(@notify_date,@msg,@faculty_id)";
                SqlCommand cmnd = new SqlCommand(QUERY, con);
                cmnd.Parameters.AddWithValue("@notify_date", txt_date.Text);
                cmnd.Parameters.AddWithValue("@msg", txt_notify.Text);
                cmnd.Parameters.AddWithValue("@faculty_id", Session["ID"]);
                con.Open();
                int result = cmnd.ExecuteNonQuery();
                if (result >= 1)
                {
                    lb_err.Visible = true;
                    lb_err.Text = "Notified...";
                    lb_err.ForeColor = System.Drawing.Color.Green;
                    txt_date.Text = "";
                    txt_notify.Text = "";
                }
                else
                {
                    lb_err.Visible = true;
                    lb_err.Text = "Not Notified...";
                    lb_err.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
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
    }
}