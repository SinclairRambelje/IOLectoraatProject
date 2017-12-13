using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using DevExpress.Xpo;
using Newtonsoft.Json.Linq;

public class ProjectContext
{
    public Logic logic;

   //getprojectbyid

    public String GetPortfolio(String data) {
		throw new System.Exception("Not implemented");
	}
    public List<Project> GetAllProjects() {
        XPCollection<Project> collection = new XPCollection<Project>();
        return collection.ToList();
    }

    public List<ProjectTag> GetAllProjectTags()
    {
        XPCollection<ProjectTag> collection = new XPCollection<ProjectTag>();
        return collection.ToList();
    }

    public Project GetProjectByID(int id)
    {
        Project project = Session.DefaultSession.GetObjectByKey<Project>(id);


        return project;
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
	public void New_Project(String data) {

        JObject inputData = JObject.Parse(data);

        Project project = new Project();

        project.Titel = inputData.GetValue("Titel").ToString();
        project.Proposal = inputData.GetValue("Proposal").ToString(); ;
        project.Donators = inputData.GetValue("Donators").ToString(); ;
        project.StartDate = DateTime.ParseExact(inputData.GetValue("StartDate").ToString(),
                           "MM/dd/yyyy",
                           CultureInfo.InvariantCulture);
        project.EndDate = DateTime.ParseExact(inputData.GetValue("EndDate").ToString(),
                           "MM/dd/yyyy",
                           CultureInfo.InvariantCulture);
        project.Participants = inputData.GetValue("Participants").ToString();
        project.ThemePhotoFilePath = inputData.GetValue("ThemePhotoFilePath").ToString();

        List<String> participantnames = inputData.GetValue("Participants").ToString().Split(',').ToList();
        List<Lector> lectors = logic.UserContext.GetAllLectors();
        List<Lector> lectorParticipants = new List<Lector>();

        foreach (string participantname in participantnames)
	    {
	        foreach (Lector lector in lectors)
	        {
	            if (participantname ==
	                lector.User.Person.Firstname + " " + lector.User.Person.Surname + " " + lector.User.Person.Initials)
	            {
                    lectorParticipants.Add(lector);

                }
	        }
	    }
	    project.LectorParticipants.AddRange(lectorParticipants);

    
        List<String> Goverendnames = inputData.GetValue("Goverend").ToString().Split(',').ToList();
        List<Lector> goverend = new List<Lector>();
        foreach (string participantname in Goverendnames)
        {
            foreach (Lector lector in lectors)
            {
                if (participantname ==
                    lector.User.Person.Firstname + " " + lector.User.Person.Surname + " " + lector.User.Person.Initials)
                {
                    goverend.Add(lector);

                }
            }
        }
        project.Governed.AddRange(goverend);



        project.Save();





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
