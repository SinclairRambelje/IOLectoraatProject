using System;
using DevExpress.Xpo;
using FontysDataObjects;

public class SprintData : XPObject
{
	private String subquestion;
	public String Subquestion {
		get {
			return subquestion;
		}
		set {
			subquestion = value;
		}
	}
	private String subquestion_Goal;
	public String Subquestion_Goal {
		get {
			return subquestion_Goal;
		}
		set {
			subquestion_Goal = value;
		}
	}
	private ResearchMethod researchMethod;
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
	public String ResultDescription {
		get {
			return resultDescription;
		}
		set {
			resultDescription = value;
		}
	}
	private String involved;
	public String Involved {
		get {
			return involved;
		}
		set {
			involved = value;
		}
	}
	private String impact;
	public String Impact {
		get {
			return impact;
		}
		set {
			impact = value;
		}
	}
	private String whatNow;
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
            return ProjectBlog;
        }
        set
        {
            if ((ProjectBlog == value))
            {
                return;
            }


            ProjectBlog prevOwner = ProjectBlog;
            ProjectBlog = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                        && (ProjectBlog.SprintData == this)))
            {
                ProjectBlog.SprintData = null;
            }


            if (!(ProjectBlog == null))
            {
                ProjectBlog.SprintData = this;
            }

            OnChanged("Owner");
        }

    }

}
