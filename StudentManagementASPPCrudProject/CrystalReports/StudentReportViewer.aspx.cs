using CrystalDecisions.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.CrystalReports
{
    public partial class StudentReportViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ReportData"] != null)
            {
                var list = Session["ReportData"];
                StudentInfoReport rpt = new StudentInfoReport();
                rpt.SetDataSource(list);
                
                CrystalReportViewer1.ReportSource = rpt;               
            }
        }
    }
}