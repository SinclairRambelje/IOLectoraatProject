using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fontys_Lectoraat_Website
{
    public partial class copy : System.Web.UI.Page
    {

        public User test
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