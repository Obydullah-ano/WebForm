using CrystalDecisions.Web;
using StudentManagementASPPCrudProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.CrystalReports
{
    public partial class StudentViewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            var data = StudentGateway.GetStudents();
            Session["ReportData"] = data;
            Response.Redirect("StudentReportViewer.aspx");            
        }
    }
}