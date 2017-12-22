using System;
using DevExpress.Xpo;

public class ProjectBlog : XPObject
{
	private String titel;
    [DbType("nvarchar(1000)")]
    public String Titel {
		get {
			return titel;
		}
		set {
			titel = value;
		}
	}
	private String blogText;
    [DbType("nvarchar(max)")]
    public String BlogText {
		get {
			return blogText;
		}
		set {
			blogText = value;
		}
	}
	private String picturePath;
    [DbType("nvarchar(1000)")]
    public String PicturePath
    {
		get {
			return picturePath;
		}
		set {
            picturePath = value;
		}
	}
    private int published;
    [DbType("NUMERIC(1,0)")]
    public int Published
    {
        get
        {
            return published;
        }
        set
        {
            published = value;
        }
    }

    public Boolean IsPublished
    {
        get
        {
            if (Published == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
       
        }
       
    }

    [Association("Blogs-BlogTags")]
    public XPCollection<Blogtag> Blogtags
    {
        get { return GetCollection<Blogtag>("Blogtags"); }
    }

    [Association]
    public Project Project;



    private SprintData sprintData;


    public SprintData SprintData
    {
        get { return sprintData; }
        set
        {
            if ((sprintData == value))
            {
                return;
            }


            SprintData prevOwner = sprintData;
            sprintData = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                 && (sprintData.ProjectBlog == this)))
            {
                sprintData.ProjectBlog = null;
            }


            if (!(sprintData == null))
            {
                sprintData.ProjectBlog = this;
            }

            OnChanged("Owner");
        }

    }
    [Association("Lectors-ProjectBlogs")]
    public XPCollection<Lector> LectorAuthors
    {
        get { return GetCollection<Lector>("LectorAuthors"); }
    }

	private Student studentAuthor;
	private Comment[] comments;

}
