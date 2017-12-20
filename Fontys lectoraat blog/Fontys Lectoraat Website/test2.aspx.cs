using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website
{
    public partial class test2 : System.Web.UI.Page
    {

     

        private Logic logic;
        public String Projects
        {
            get { return GetProjectData(); }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
        }

      


        public string GetProjectData()
        {
            List<Project> projects = logic.ProjectContext.GetAllProjects();
            if (projects.Count == 0)
            {
                return "";
            }

            JArray jArray = new JArray();

            foreach (Project project in projects)
            {
                var inputData = JObject.FromObject(new
                {
                    homedisplay = "<div><P>"+project.Titel+ "</P></div><img src='FileHandler.ashx?op=download&id="+project.Oid+"'> </div>",
                });
                jArray.Add(inputData);
            }
            return jArray.ToString();
        }
    }
}