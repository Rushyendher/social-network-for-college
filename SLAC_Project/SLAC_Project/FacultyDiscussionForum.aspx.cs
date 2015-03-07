using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLAC_Project
{
    public partial class FacultyDiscussionForum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnk_generaldiscussion_Click(object sender, EventArgs e)
        {
            Response.Redirect("GeneralDiscussion.aspx");
        }

        protected void lnk_interactwithfaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyAnswerStudent.aspx");
        }
    }
}