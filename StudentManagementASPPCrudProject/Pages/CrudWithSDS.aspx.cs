using StudentManagementASPPCrudProject.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.Pages
{
    public partial class CrudWithSDS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           SaveStudentUserControl.insertType = "SQLDataSource";
        }        
    }
}