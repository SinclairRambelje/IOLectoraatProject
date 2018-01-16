using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Fontys_Lectoraat_Website
{
    /// <summary>
    /// Summary description for FileHandler
    /// </summary>
    public class FileHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            String operation = context.Request.QueryString["op"];
            if ((operation == "download"))
            {
                Logic logic = new Logic();
                Project project = logic.ProjectContext.GetProjectByID(Convert.ToInt32(context.Request.QueryString["id"]));
                context.Response.ContentType = "application/octet-stream";
                context.Response.AppendHeader("Content-Disposition", ("attachment; filename=" + project.Titel + ".jpg"));
                context.Response.TransmitFile(context.Server.MapPath(project.ThemePhotoFilePath));
                context.Response.End();
            }

            if ((operation == "pictureprojectblog"))
            {
                Logic logic = new Logic();
                ProjectBlog projectBlog = logic.ProjectBlogContext.GetProjectBlogByID(Convert.ToInt32(context.Request.QueryString["id"]));
                context.Response.ContentType = "application/octet-stream";
                context.Response.AppendHeader("Content-Disposition", ("attachment; filename=" + projectBlog.Titel+".jpg"));
                context.Response.TransmitFile(context.Server.MapPath(projectBlog.PicturePath));
                context.Response.End();
            }


        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}