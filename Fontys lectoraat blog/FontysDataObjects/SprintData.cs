using System;
using DevExpress.Xpo;
using FontysDataObjects;

public class SprintData : XPObject
{
	private String subquestion;
    [DbType("nvarchar(2000)")]
    public String Subquestion {
		get {
			return subquestion;
		}
		set {
			subquestion = value;
		}
	}
	private String subquestion_Goal;
    [DbType("nvarchar(2000)")]
    public String Subquestion_Goal {
		get {
			return subquestion_Goal;
		}
		set {
			subquestion_Goal = value;
		}
	}
	private ResearchMethod researchMethod;
    [DbType("nvarchar(100)")]
    public ResearchMethod ResearchMethod {
		get {
			return researchMethod;
		}
		set {
			researchMethod = value;
		}
	}
    [Association]
    public XPCollection<SprintResult> SprintResults
    {
        get { return GetCollection<SprintResult>("SprintResults"); }
    }

    [Association]
    public XPCollection<SprintResearchMethod> SprintResearchMethods
    {
        get { return GetCollection<SprintResearchMethod>("SprintResearchMethods"); }
    }

    private String resultDescription;
    [DbType("nvarchar(2000)")]
    public String ResultDescription {
		get {
			return resultDescription;
		}
		set {
			resultDescription = value;
		}
	}
	private String involved;
    [DbType("nvarchar(max)")]
    public String Involved {
		get {
			return involved;
		}
		set {
			involved = value;
		}
	}
	private String impact;
    [DbType("nvarchar(2000)")]
    public String Impact {
		get {
			return impact;
		}
		set {
			impact = value;
		}
	}
	private String whatNow;
    [DbType("nvarchar(2000)")]
    public String WhatNow {
		get {
			return whatNow;
		}
		set {
			whatNow = value;
		}
	}

	private ProjectBlog projectBlog;



    public ProjectBlog ProjectBlog
    {
        get
        {
            return projectBlog;
        }
        set
        {
            if ((projectBlog == value))
            {
                return;
            }


            ProjectBlog prevOwner = projectBlog;
            projectBlog = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                        && (projectBlog.SprintData == this)))
            {
                projectBlog.SprintData = null;
            }


            if (!(projectBlog == null))
            {
                projectBlog.SprintData = this;
            }

            OnChanged("Owner");
        }

    }

}
