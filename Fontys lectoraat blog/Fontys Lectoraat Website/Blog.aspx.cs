using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FontysDataObjects;

namespace Fontys_Lectoraat_Website
{
    public partial class Blog : System.Web.UI.Page
    {

        private Logic logic;
        private ProjectBlog projectBlog;

        private string titel = "";

        public string Titel
        {
            get { return projectBlog.Titel; }

        }

        public string Details
        {
            get
            {
                return "Door " + projectBlog.Titel + " | " + "DATUM" + " | " + projectBlog.Project.Titel + " | " +
                       "COMMENTS";
            }

        }

        public string BlogImage
        {
            get
            {
                return "<img src ='FileHandler.ashx?op=pictureprojectblog&id=" + projectBlog.Oid + "' > </ div > ";
                ;
            }

        }

        public string Blogtext
        {
            get { return projectBlog.BlogText; }

        }

        public string Tags
        {
            get { return titel; }

        }


        public string ResearchMethods
        {
            get { return GetMethodes(); }

        }

        public string ProjecTitel
        {
            get { return projectBlog.Project.Titel; }

        }

        public string ProjectProposal
        {
            get { return projectBlog.Project.Proposal.Substring(0, 250) + "..."; }

        }


        public string Messages
        {
            get { return titel; }

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();

            this.projectBlog = logic.ProjectBlogContext.GetProjectBlogByID(Convert.ToInt32(Request.QueryString["id"]));
        }

        public string GetMethodes()
        {
            //       < img src = "Images/Bieb.png" />

            //< img src = "Images/Veld.png" />

            // < img src = "Images/Showroom.png" />

            //  < img src = "Images/Lab.png" />

            //   < img src = "Images/Werkplaats.png" />



            //string img = "";
            //foreach (SprintResearchMethod sprintResearchMethod in projectBlog.SprintData.SprintResearchMethods)
            //{
            //    if (sprintResearchMethod.Method == "Veld")
            //    {
            //        img += "< img src = \"~/Images/Veld.png\" />";
            //    }
            //    else if (sprintResearchMethod.Method == "Bieb")
            //    {
            //        img += "< img src = \"Images/Veld.png\" />";
            //    }
            //    else if (sprintResearchMethod.Method == "Werkplaats")
            //    {
            //        img += "< img src = \"Images/Veld.png\" />";
            //    }
            //    else
            //    {
            //        img += "< img src = \"Images/Veld.png\" />";
            //        img += "< img src = \"Images/Veld.png\" />";
            //    }
              

            //}
            return "";

        }
    }
}