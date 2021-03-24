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
    public partial class CrudWithODS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SaveStudentUserControl.insertType = "Object";
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            FileUpload up1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string imgName = StudentGateway.GetImageName(id);
            DeleteExistingImage(imgName);
            string fileUrl = "~/Images/";
            string imageName = "";
            if (up1.HasFile)
            {
                imageName = up1.FileName;
                fileUrl += imageName;
                up1.SaveAs(Server.MapPath(fileUrl));
            }
            StudentGateway.UpdateImageById(id, imageName, fileUrl);
        }

        private void DeleteExistingImage(string imgName)
        {
            string path = Server.MapPath(@"~/Images/" + imgName);
            FileInfo fileobj = new FileInfo(path);
            if (fileobj.Exists)
            {
                fileobj.Delete();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string imgName = StudentGateway.GetImageName(id);
            DeleteExistingImage(imgName);
        }
    }
}