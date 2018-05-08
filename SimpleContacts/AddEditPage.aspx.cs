﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleContacts
{
    public partial class AddEditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string newContact = (Request.QueryString["ID"] != null) ? Request.QueryString["ID"] : "";
        }

        protected void SaveContact_Click(object sender, EventArgs e)
        {
            string command = "INSERT INTO Contacts([FirstName],[LastName],[Note], [StreetAddress], [CityAddress], [StateAddress], [ZipAddress], [Email],[Phone]) values(@FirstName, @LastName, @Note,@StreetAddress, @CityAddress, @StateAddress, @ZipAddress,@Email,@Phone)";

            var cnnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection cnn = new SqlConnection(cnnString))
            {


                using (SqlCommand cmd = new SqlCommand(command, cnn))
                {


                    cmd.Parameters.AddWithValue("@FirstName", FirstNameID.Text);
                    cmd.Parameters.AddWithValue("@LastName", LastNameID.Text);
                    cmd.Parameters.AddWithValue("@Note", NoteID.Text);
                    cmd.Parameters.AddWithValue("@StreetAddress", StreetID.Text);
                    cmd.Parameters.AddWithValue("@CityAddress", CityID.Text);
                    cmd.Parameters.AddWithValue("@StateAddress", StateList.Text);
                    cmd.Parameters.AddWithValue("@ZipAddress", ZipID.Text);
                    cmd.Parameters.AddWithValue("@Email", EmailID.Text);
                    cmd.Parameters.AddWithValue("@Phone", PhoneID.Text);
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                }



            }

            Response.Redirect("Contacts.aspx");
        }
    }
}