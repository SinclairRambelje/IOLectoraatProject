﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fontys_Lectoraat_Website
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        public User User
        {
            get
            {
                return (User)Session["User"];
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}