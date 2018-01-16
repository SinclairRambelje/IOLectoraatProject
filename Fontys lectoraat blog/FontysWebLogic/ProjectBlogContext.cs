using System;
using System.Collections.Generic;
using System.Linq;
using DevExpress.Xpo;
using FontysDataObjects;
using Newtonsoft.Json.Linq;

public class ProjectBlogContext {
    public Logic logic;
    public String GetAllProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}

    public void AddBlogTag(String tag)
    {
       Blogtag blogtag = new Blogtag();
        blogtag.Tag = tag;
        blogtag.Save();
    }
    public List<Blogtag> GetAllProjectBlogTags()
    {
        XPCollection<Blogtag> collection = new XPCollection<Blogtag>();
        return collection.ToList();
    }
    public List<ProjectBlog> GetAllProjectBlogs()
    {
        XPCollection<ProjectBlog> collection = new XPCollection<ProjectBlog>();
        return collection.ToList();
    }

    public ProjectBlog GetProjectBlogByID(int id)
    {
        ProjectBlog projectBlog = Session.DefaultSession.GetObjectByKey<ProjectBlog>(id);


        return projectBlog;
    }


    public String GetProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}
	public String FilterProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String TagFilterProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String LikeProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}
	public String ShareProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}
	public String CommentProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}
	public void NewProjectBlog(String data, List<SprintResult> results, List<SprintResearchMethod>methods ) {
        JObject inputData = JObject.Parse(data);

        JObject projectBlogData = (JObject)inputData["ProjectBlog"];
        JObject sprintDataData = (JObject)inputData["SprintData"];

        ProjectBlog projectBlog = new ProjectBlog();
        SprintData sprintData = new SprintData();
        List<SprintResult> sprintResults = new List<SprintResult>();
            List<SprintResearchMethod> sprintResearchMethods = new List<SprintResearchMethod>();


        projectBlog.Titel = projectBlogData.GetValue("Titel").ToString();
        projectBlog.BlogText = projectBlogData.GetValue("BlogText").ToString();
        projectBlog.PicturePath = projectBlogData.GetValue("PicturePath").ToString();
 //projectBlog.Published = null;
            projectBlog.Project = logic.ProjectContext.GetProjectByID(Convert.ToInt32( projectBlogData.GetValue("Project").ToString()));


        List<String> tagNames = projectBlogData.GetValue("Blogtags").ToString().Split(',').ToList();
        List<Blogtag> blogtags = GetAllProjectBlogTags();
        foreach (string tagname in tagNames)
        {
            foreach (Blogtag blogtag in blogtags)
            {
                if (tagname ==
                    blogtag.Tag)
                {
                    projectBlog.Blogtags.Add(blogtag);

                }
            }
        }

        sprintData.Subquestion= sprintDataData.GetValue("Subquestion").ToString();
           sprintData.Subquestion_Goal= sprintDataData.GetValue("Subquestion_Goal").ToString();
        sprintData.Involved= sprintDataData.GetValue("Involved").ToString();
        sprintData.Impact= sprintDataData.GetValue("Impact").ToString();
        sprintData.WhatNow= sprintDataData.GetValue("WhatNow").ToString();

	    foreach (SprintResult sprintResult in results)
	    {
            sprintData.SprintResults.Add(sprintResult);

        }

        foreach (SprintResearchMethod sprintResearchMethod in methods)
        {
            sprintData.SprintResearchMethods.Add(sprintResearchMethod);

        }

	    projectBlog.SprintData = sprintData;
       
        projectBlog.Save();

    }
    public String GetAllOwnedProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String FilterOwnedProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String DeleteOwnedProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String ModifyOwnedProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}
	public String DeleteProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}
	public String ModifyProjectBlog(String data) {
		throw new System.Exception("Not implemented");
	}


}
