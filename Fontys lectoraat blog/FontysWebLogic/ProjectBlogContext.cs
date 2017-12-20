using System;
using System.Collections.Generic;
using System.Linq;
using DevExpress.Xpo;

public class ProjectBlogContext {
	public String GetAllProjectBlogs(String data) {
		throw new System.Exception("Not implemented");
	}

    public void AddBlogTag(String tag)
    {
       Blogtag blogtag = new Blogtag();
        blogtag.Tag = tag;
        blogtag.Save();
    }
    public List<Blogtag> GetAllBlogTags()
    {
        XPCollection<Blogtag> collection = new XPCollection<Blogtag>();
        return collection.ToList();
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
	public String NewProjectBlog(String data) {
		throw new System.Exception("Not implemented");
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
