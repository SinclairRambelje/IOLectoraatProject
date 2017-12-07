using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;

namespace Fontys_Lectoraat_Website
{
    public partial class Log_In : System.Web.UI.Page
    {
        private  Logic logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
        }

        protected void LoginForm_Authenticate(object sender, AuthenticateEventArgs e)
        {
            User user = logic.UserContext.Login(LoginForm.UserName, LoginForm.Password);
            if (user != null)
            {
            Session["user"] = user;
                Response.Redirect("~/Home.aspx");
            }
        }
    }
}