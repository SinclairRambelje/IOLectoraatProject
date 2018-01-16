using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website
{
    public partial class Test6 : System.Web.UI.Page
    {
        private Logic logic;

      private Project project;
        private string projectblogs;
        private string projectBlogtags;

        public String Projectblogs
        {
            get { return projectblogs; }
        }

        public String Tags
        {
            get { return projectBlogtags; }
        }

        public String Titel
        {
            get { return project.Titel; }
     
        }

        public String Involved
        {
            get { return GetParticipants(); }

        }
        public String Sponsors
        {
            get { return project.Donators; }

        }

        public String ProjectTags
        {
            get { return GetTags(); }

        }
     
        public String Description
        {
            get { return project.Proposal; }

        }

        public String ProjectThemePicture
        {
            get { return "<img src ='FileHandler.ashx?op=download&id=" + project.Oid + "' > </ div > "; }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
            this. project = logic.ProjectContext.GetProjectByID(Convert.ToInt32(Request.QueryString["id"]));

            projectblogs = GetProjectData();





        }

        public string GetTags()
        {
            List<ProjectTag> projectTags = project.ProjectTags.ToList();
            string tagbuild = "";
            int count = 0;
            foreach (ProjectTag projectTag in projectTags)
            {
                if (count == 0)
                {
                    tagbuild += "<span> ";
                }
                count++;

                tagbuild += "<a class='tag'>" + projectTag.Tag + "</a> ";



                if (count == projectTags.Count)
                {
                    tagbuild += "</span>";
                }




            }
        
            return tagbuild;
        }

        public string GetParticipants()
        {
            string Participants = "";
            foreach (string participant in project.Participants.Split(',').ToList())
            {
                Participants += " ," + participant;
            }
            return Participants;
        }

        public string GetProjectData()
        {
            List<ProjectBlog> projectBlogs = logic.ProjectBlogContext.GetAllProjectBlogs();
            if (projectBlogs.Count == 0)
            {
                return "";
            }

            JArray jArrayProjectBlogs = new JArray();
            JArray jArrayTags = new JArray();


            foreach (ProjectBlog projectBlog in projectBlogs)
            {

                List<Blogtag> projectBlogtags = projectBlog.Blogtags.ToList();
                string tagbuild = "";
                int count = 0;
                foreach (Blogtag blogtag in projectBlogtags)
                {
                    if (count == 0)
                    {
                        tagbuild += "<div class='tagcontainer'>Tags:<span> ";
                    }
                    count++;

                    tagbuild += "<a class='tag'>" + blogtag.Tag + "</a> ";



                    if (count == projectBlogtags.Count)
                    {
                        tagbuild += "</span></div>";
                    }


                    var inputData2 = JObject.FromObject(new
                    {

                        tag = blogtag.Tag
                    });
                    jArrayTags.Add(inputData2);

                }


                this.projectBlogtags = jArrayTags.ToString();

                string infoText = projectBlog.BlogText.Substring(0, 250);
                infoText += "...";
                infoText = infoText.Replace("<div>", "");

                var inputData = JObject.FromObject(new
                {
                    //content = "<div><P>" + project.Titel + "</P></div><img src='FileHandler.ashx?op=download&id=" + project.Oid + "'> </div>",

                    //<div class='tagcontainer'>Tags:<span><a class='tag'>UI</a></span></div></div>
                    content =
                    "<img src='FileHandler.ashx?op=pictureprojectblog&id=" + projectBlog.Oid + "'><div class='innercontent'>" +
                    "<div class= 'titel'>" + projectBlog.Titel + "</div><p>" + infoText +
                    "</p>" + tagbuild + "<div class='tagcontainer'>Project: " +
                    projectBlog.Project.Titel + "</div><br><br><br><button>Lees meer</button><br></div>",
                    name = projectBlog.Titel,
                    tags = tagbuild
                });
                jArrayProjectBlogs.Add(inputData);

            }



            return jArrayProjectBlogs.ToString();
        }
    }
}