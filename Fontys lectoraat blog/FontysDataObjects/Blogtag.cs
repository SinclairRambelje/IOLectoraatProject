using System;
using DevExpress.Xpo;

public class Blogtag : XPObject
{
	private String tag;
    [DbType("nvarchar(500)")]
    public String Tag {
		get {
			return tag;
		}
		set {
			tag = value;
		}
	}

    [Association("Blogs-BlogTags")]
    public XPCollection<ProjectBlog> ProjectBlogs
    {
        get { return GetCollection<ProjectBlog>("ProjectBlogs"); }
    }

}
