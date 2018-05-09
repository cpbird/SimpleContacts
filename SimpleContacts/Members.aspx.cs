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
    public partial class Members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               String GroupId = Request.QueryString["GroupId"];
            SqlDataSource2.UpdateCommand = "UPDATE Contacts SET GroupId=" + GroupId; 

        }



    }
    }

