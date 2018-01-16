using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Fontys_Lectoraat_Website
{
    public partial class test5 : System.Web.UI.Page
    {
        private const int controlCount = 1;

        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                foreach (HtmlGenericControl item in MyControlState)
                {
                    PlaceHolder1.Controls.Add(item);
                }
            }
        }

        private int _CurrentControlcount
        {
            get
            {
                int _currentControlcount = object.Equals(Session["_currentControlcount"], null) ? controlCount : (int)Session["_currentControlcount"];
                if (Object.Equals(_currentControlcount, null))
                {
                    _currentControlcount = new int();
                    _currentControlcount = 0;
                    Session["_currentControlcount"] = _currentControlcount;

                }
                return _currentControlcount;
            }
            set
            {
                Session["_currentControlcount"] = value;
            }
        }

        private List<HtmlGenericControl> MyControlState
        {
            get
            {
                List<HtmlGenericControl> myControlState = (List<HtmlGenericControl>)Session["myControlState"];
                if (object.Equals(myControlState, null))
                {
                    myControlState = new List<HtmlGenericControl>();
                }

                return myControlState;
            }
            set
            {
                Session["myControlState"] = value;
            }

        }

        protected void btnAddControls_Click(object sender, EventArgs e)
        {
            int count = MyControlState.Count();
            HtmlGenericControl myGenericUL = new HtmlGenericControl("ul");
            HtmlGenericControl myGenericLI = new HtmlGenericControl("li");
            TextBox tbx = new TextBox() { Text = string.Format("Textbox{0}", count), ID = string.Format("Textbox{0}", count) };
            myGenericLI.Controls.Add(tbx);
            myGenericUL.Controls.Add(myGenericLI);
            PlaceHolder1.Controls.Add(myGenericUL);
            List<HtmlGenericControl> setup = MyControlState;
            setup.Add(myGenericUL);
            MyControlState = setup;
            _CurrentControlcount = _CurrentControlcount + 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
        }
    }
}