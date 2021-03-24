using StudentManagementASPPCrudProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementASPPCrudProject.MasterPages
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                // Finds user name and says Hi
                lblWelcome.Text = "Current User : " + Context.User.Identity.Name;
            }
            else
            {
                // It is anonymous user, say hi to guest
                lblWelcome.Text = "Hi: guest";
            }


            SetMenuData();
        }
        private void SetMenuData()
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlDataAdapter da = new SqlDataAdapter("spGetMenuDate", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);
                ds.Relations.Add("ChildRows", ds.Tables[0].Columns["Id"], ds.Tables[1].Columns["parentId"]);
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    MenuItem mitem = new MenuItem();
                    mitem.Text = item["menuText"].ToString();

                    mitem.NavigateUrl = item["navigateUrl"].ToString();
                    DataRow[] lavel2DataRow = item.GetChildRows("ChildRows");
                    foreach (DataRow mitem2 in lavel2DataRow)
                    {
                        MenuItem childItem = new MenuItem();
                        childItem.Text = mitem2["menuText"].ToString();
                        childItem.NavigateUrl = mitem2["navigateUrl"].ToString();
                        mitem.ChildItems.Add(childItem);
                    }
                    Menu1.Items.Add(mitem);
                }

            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("../Login.aspx");

        }
    }
}