using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services;
using System.Data;
using System.Text;
using System.Configuration;
using System.Collections;

namespace Fontys_Lectoraat_Website
{
    public partial class Test : System.Web.UI.Page
    {


        public string listFilter = null;
        public string listFilter_for_parts = null;
        StringBuilder output_part = new StringBuilder();

        private Logic logic;

        public string ListFilter
        {
            get { return listFilter; }
       
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            logic = new Logic();
            listFilter = BindName();
            listFilter_for_parts = output_part.ToString();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string input_tags = singleFieldTags2.Text;
            string[] tags_input_parts = input_tags.Split(',');

            string[] database_tags = listFilter_for_parts.Split(',');

            //foreach (string input in tags_input_parts)
            //{
            //    foreach (string database in database_tags)
            //    {
            //        if (input == database)
            //        {
            //            goto OUTERCONTINUE;
            //        }
            //    }
            //    ob.ExecuteScalar("exec tag_insert @tag_name='" + input + "' ");

            //    OUTERCONTRINUE:
            //    ;
            //}
            Response.Write("Success");
        }

        private string BindName()
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
    }
}