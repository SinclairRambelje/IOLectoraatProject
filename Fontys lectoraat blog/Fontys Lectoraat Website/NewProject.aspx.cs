using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fontys_Lectoraat_Website.Control
{
    public partial class NewProject : System.Web.UI.Page
    {


        public string projectTags = null;
        public string lectors = null;


        public string listFilter_for_parts = null;
        StringBuilder output_part = new StringBuilder();

        private Logic logic;

        public string ProjectTags
        {
            get { return projectTags; }

        }

        public string Lectors
        {
            get { return lectors; }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            logic = new Logic();

            projectTags = getProjectTags();
            lectors = getLectors();


            listFilter_for_parts = output_part.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            List<String> tags = hdnSelectedTags.Value.Split(',').ToList();


        }



        private string getProjectTags()
        {


            StringBuilder output = new StringBuilder();

            output.Append("[");

            List<ProjectTag> projectTags = logic.ProjectContext.GetAllProjectTags();
            int count = 0;

            foreach (ProjectTag projectTag in projectTags)
            {
                count++;

                output_part.Append(projectTag.Tag);
                output.Append("\"" + projectTag.Tag + "\"");

                if (count != projectTags.Count)
                {
                    output_part.Append(",");
                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
        }




        private string getLectors()
        {


            StringBuilder output = new StringBuilder();

            output.Append("[");

            List<Lector> lectors = logic.UserContext.GetAllLectors();
            int count = 0;

            foreach (Lector lector in lectors)
            {
                count++;

    
                output.Append("\"" + lector.User.Person.Surname+","+ lector.User.Person.Firstname + " " + lector.User.Person.Initials  + "\"");

                if (count != lectors.Count)
                {
                  
                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
        }

    }

}