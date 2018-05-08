using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleContacts
{
    public partial class Groups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GroupLabel.Visible = false;
            GroupText.Visible = false;
            GroupButtonAdd.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GroupLabel.Visible = true;
            GroupText.Visible = true;
            GroupButtonAdd.Visible = true;

        }

        protected void GroupButtonAdd_Click(object sender, EventArgs e)
        {
            string command = "INSERT INTO GROUPS([GroupDescription])" + "values(@GroupDescription)";
            var connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection connect = new SqlConnection(connectionString))
            {


                using (SqlCommand cmd = new SqlCommand(command, connect))
                {
                    cmd.Parameters.AddWithValue("@GroupDescription", GroupText.Text);
                    connect.Open();
                    cmd.ExecuteNonQuery();
                    connect.Close();
                }
            }

            Response.Redirect("Groups.aspx");
        }
    }
}