using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SLAC_Project
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLCON"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select DATA from WRITE_POSTS where ID =@ID";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            SqlParameter ImageID = new SqlParameter("@ID", SqlDbType.Int);
            ImageID.Value = context.Request.QueryString["ID"];
            cmd.Parameters.Add(ImageID);
            conn.Open();
            SqlDataReader dReader = cmd.ExecuteReader();
            dReader.Read();
            context.Response.BinaryWrite((byte[])dReader["DATA"]);
            dReader.Close();
            conn.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}