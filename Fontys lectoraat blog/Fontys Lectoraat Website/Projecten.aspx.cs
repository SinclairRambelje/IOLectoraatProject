using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website
{
    public partial class Test3 : System.Web.UI.Page
    {

        private Logic logic;

        private string projects;
        private string projecttags;
        public String Projects
        {
            get { return projects; }
        }
        public String Tags
        {
            get { return projecttags; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
            projects = GetProjectData();
        }

        public string GetProjectData()
        {
            List<Project> projects = logic.ProjectContext.GetAllProjects();
            if (projects.Count == 0)
            {
                return "";
            }

            JArray jArrayProjects = new JArray();
            JArray jArrayTags = new JArray();


            foreach (Project project in projects)
            {

                List<ProjectTag> projectTags = project.ProjectTags.ToList();
                string tagbuild = "";
                int count = 0;
                foreach (ProjectTag projectTag in projectTags)
                {
                    if (count == 0)
                    {
                        tagbuild += "<div class='tagcontainer'>Tags:<span> ";
                    }
                    count++;

                    tagbuild += "<a class='tag'>"+projectTag.Tag+"</a> ";
                


                    if (count == projectTags.Count)
                    {
                        tagbuild += "</span></div>";
                    }


                    var inputData2 = JObject.FromObject(new
                    {
                      
                        tag = projectTag.Tag
                    });
                    jArrayTags.Add(inputData2);

                }
                tagbuild += "</div>";

                projecttags = jArrayTags.ToString();

                string infoText = project.Proposal.Substring(0, 250);
                infoText += "...";


                var inputData = JObject.FromObject(new
                {
                    //content = "<div><P>" + project.Titel + "</P></div><img src='FileHandler.ashx?op=download&id=" + project.Oid + "'> </div>",

                    //<div class='tagcontainer'>Tags:<span><a class='tag'>UI</a></span></div></div>
                    content = "<img src='FileHandler.ashx?op=download&id=" + project.Oid + "'/><div class='info'><h2>"+project.Titel+"</h2><p>"+infoText+ "</p><a class='readmore'>Lees meer</a><br><br>" + tagbuild,
                name = project.Titel,
                tags = tagbuild
                });
                jArrayProjects.Add(inputData);
            }
            return jArrayProjects.ToString();
        }
    }
}