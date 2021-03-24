using StudentManagementASPPCrudProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.Registration
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter userName = new SqlParameter("@userName", txtUserName.Text);
                    string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
                    SqlParameter password = new SqlParameter("@password", encryptedPassword);
                    SqlParameter email = new SqlParameter("@email", txtEmail.Text);
                    SqlParameter role = new SqlParameter("@role", txtRole.Text);
                    cmd.Parameters.Add(userName);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(role);
                    con.Open();
                    int returnCode = (int)cmd.ExecuteScalar();
                    if (returnCode == -1)
                    {
                        lblMessage.Text = "User already exists.";
                    }
                    else
                    {
                        Response.Redirect("Register");
                    }
                }
            }
        }
    }
}