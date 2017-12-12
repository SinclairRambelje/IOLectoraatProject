using System;
using System.Collections.Generic;
using System.Linq;
using DevExpress.Xpo;

public class ProjectContext {
	public String GetPortfolio(String data) {
		throw new System.Exception("Not implemented");
	}
	public String GetAllProjects(String data) {
		throw new System.Exception("Not implemented");
	}

    public List<ProjectTag> GetAllProjectTags()
    {
        XPCollection<ProjectTag> collection = new XPCollection<ProjectTag>();
        return collection.ToList();
    }

    public void AddProjectTag(string tag)
    {
        ProjectTag projectTag = new ProjectTag();
        projectTag.Tag = tag;
        projectTag.Save();
    }
    public String GetHomepageProjects(String data) {
		throw new System.Exception("Not implemented");
	}
	public String FilerProjects(String data) {
		throw new System.Exception("Not implemented");
	}
	public String TagFIlterProjects(String data) {
		throw new System.Exception("Not implemented");
	}
	public String New_Project(String data) {
		throw new System.Exception("Not implemented");


        Project project = new Project();



	}
	public String View_Partaken_Projects(String data) {
		throw new System.Exception("Not implemented");
	}
	public String Filter_Partaken_Projects(String data) {
		throw new System.Exception("Not implemented");
	}
	public String GetAllProjectAndRelated(String data) {
		throw new System.Exception("Not implemented");
	}
	public String Modify_Governd_Project(String data) {
		throw new System.Exception("Not implemented");
	}
	public String Delete_Governd_Project(String data) {
		throw new System.Exception("Not implemented");
	}


}
