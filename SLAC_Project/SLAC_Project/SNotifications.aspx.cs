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
    public partial class SNotifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string cs = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                try
                {
                    string query = "select MSG as Notifications, FACULTY_ID AS FacultyID from faculty_notify where NOTIFY_DATE = @NOTIFY_DATE";
                    SqlCommand cmnd = new SqlCommand(query, con);
                    con.Open();
                    DateTime dt = DateTime.Now;
                    string sdate = dt.ToShortDateString();
                    cmnd.Parameters.AddWithValue("@NOTIFY_DATE", sdate);
                    if (sdate == DateTime.Now.ToShortDateString())
                    {
                        GridView1.DataSource = cmnd.ExecuteReader();
                        GridView1.DataBind();
                    }
                    else
                    {

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
        }
    }
}