﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleContacts
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

            SqlDataSource1.SelectCommand = "SELECT * FROM Contacts WHERE LastName LIKE '%" + SearchBox.Text + "%' OR FirstName LIKE '%" + SearchBox.Text + "%'";

           
        }

        protected void AddButton(object sender, EventArgs e)
        {
            Response.Redirect("AddEditPage.aspx?ID=" + "new");
        }

      
    }
}