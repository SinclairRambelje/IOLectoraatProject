using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website
{
    public partial class ProjectBlogs : System.Web.UI.Page
    {

        private Logic logic;

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

        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
            projectblogs = GetProjectData();
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
                    "</p>"+ tagbuild + "<div class='tagcontainer'>Project: " +
                    projectBlog.Project.Titel + "</div><br><br><br><button onclick=\"location.href = 'Blog.aspx?id=" + projectBlog.Oid + "'; \" type='button'>Lees meer</button><br></div>",
                    name = projectBlog.Titel,
                    tags = tagbuild
                });
                jArrayProjectBlogs.Add(inputData);
            
            }


     
            return jArrayProjectBlogs.ToString();
        }
    }

}