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

namespace StudentManagementASPPCrudProject.UserControl
{
    public partial class LoginUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration/Register");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            bool userFound = AuthencicateUser(username, password);
            if (userFound)
            {
                FormsAuthentication.RedirectFromLoginPage(username, false);
                Response.Redirect("Pages/Home");
            }
            else
            {                
                lblMessage.Text = "Invalid User";
            }
        }
        private bool AuthencicateUser(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                SqlParameter pass = new SqlParameter("@password", EncryptedPassword);
                SqlParameter user = new SqlParameter("@userName", username);
                cmd.Parameters.Add(user);
                cmd.Parameters.Add(pass);
                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;        

            }
        }
    }
}