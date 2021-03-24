using StudentManagementASPPCrudProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.UserControl
{
    public partial class SaveStudentUserControl : System.Web.UI.UserControl
    {
        string con = Connection.GetConnectionString();
        public string insertType = "SQLDataSource";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clnDateOfBirth.Visible = false;
                LoadCourseName();
            }
        }
        private void LoadCourseName()
        {
            using (var con = new SqlConnection(Connection.GetConnectionString()))
            {
                ddlCourseName.DataSource = getUserData();
                ddlCourseName.DataTextField = "courseName";
                ddlCourseName.DataValueField = "Id";
                ddlCourseName.DataBind();

            }
        }
        public DataTable getUserData()
        {
            using (var con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = new SqlCommand("spgetCourseName", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        protected void btnImgShowHide_Click(object sender, ImageClickEventArgs e)
        {
            if (clnDateOfBirth.Visible)
            {
                clnDateOfBirth.Visible = false;
            }
            else
            {
                clnDateOfBirth.Visible = true;
            }
        }

        protected void clnDateOfBirth_SelectionChanged(object sender, EventArgs e)
        {
            txtDatePicker.Text = clnDateOfBirth.SelectedDate.ToShortDateString();
            clnDateOfBirth.Visible = false;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                if (FileUpload1.PostedFile.ContentLength == 0)
                {
                    //lblMessage.Text = "Chose your image first";
                }
                else
                {
                    string imagename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    HiddenFieldImageName.Value = imagename;
                    string filePath = "~/Images/" + imagename;
                    HiddenFieldImagUrl.Value = filePath;
                    FileUpload1.SaveAs(Server.MapPath(filePath));
                    this.Image1.ImageUrl = filePath;
                }
            }
        }

        protected void btnSaveStudent_Click(object sender, EventArgs e)
        {
            if (HiddenFieldImageName.Value == null && HiddenFieldImagUrl.Value == null)
            {
                //lblMessage.Text = "Please select and view image";
            }
            else
            {
                if (insertType != "SQLDataSource")
                {
                    Student obj = new Student();
                    obj.StudName = txtStudName.Text;
                    obj.Email = txtEmail.Text;
                    obj.Phone = txtPhone.Text;
                    obj.DateOfBirth = clnDateOfBirth.TodaysDate;
                    obj.CourseId = Convert.ToInt32(ddlCourseName.SelectedValue.ToString());
                    obj.ImageName = HiddenFieldImageName.Value;
                    obj.ImageUrl = HiddenFieldImagUrl.Value;
                    StudentGateway.saveStudent(obj.StudName, obj.Email, obj.Phone, obj.DateOfBirth, obj.CourseId, obj.ImageName, obj.ImageUrl);
                    Response.Redirect("CrudWithODS");
                }
                else
                {
                    Student obj = new Student();
                    obj.StudName = txtStudName.Text;
                    obj.Email = txtEmail.Text;
                    obj.Phone = txtPhone.Text;
                    obj.DateOfBirth = clnDateOfBirth.TodaysDate;
                    obj.CourseId = Convert.ToInt32(ddlCourseName.SelectedValue.ToString());
                    obj.ImageName = HiddenFieldImageName.Value;
                    obj.ImageUrl = HiddenFieldImagUrl.Value;
                    StudentGateway.saveStudent(obj.StudName, obj.Email, obj.Phone, obj.DateOfBirth, obj.CourseId, obj.ImageName, obj.ImageUrl);
                    Response.Redirect("CrudWithSDS");
                }
            }
        }
    }
}