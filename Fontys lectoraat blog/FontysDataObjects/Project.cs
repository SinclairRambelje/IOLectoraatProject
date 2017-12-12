using System;
using System.Collections.Generic;
using DevExpress.Xpo;

public class Project : XPObject
 {
	private String titel;
    [DbType("nvarchar(3000)")]
    public String Titel {
		get {
			return titel;
		}
		set {
			titel = value;
		}
	}
	private String proposal;
    [DbType("nvarchar(max)")]
    public String Proposal {
		get {
			return proposal;
		}
		set {
			proposal = value;
		}
	}
	private String donators;
    [DbType("nvarchar(1000)")]
    public String Donators {
		get {
			return donators;
		}
		set {
            donators = value;
		}
	}

    private DateTime startDate;

    private DateTime endDate;
    [DbType("nvarchar(1000)")]
    public DateTime StartDate
    {
        get { return startDate; }
        set { startDate = value; }
    }
    [DbType("nvarchar(1000)")]
    public DateTime EndDate
    {
        get { return endDate; }
        set { endDate = value; }
    }


 //   private String result;

 //   public String Result {
	//	get {
	//		return result;
	//	}
	//	set {
	//		result = value;
	//	}
	//}
	private String participants;
    [DbType("nvarchar(3000)")]
    public String Participants {
		get {
			return participants;
		}
		set {
			participants = value;
		}
    }

    [Association]
    public XPCollection<ProjectTag> ProjectTags
    {
        get { return GetCollection<ProjectTag>("ProjectTags"); }
    }

    


    [Association("lectorParticipants")]
    public XPCollection<Lector> LectorParticipants
    {
        get { return GetCollection<Lector>("LectorParticipants"); }
    }

    [Association("LectorsProjectsGoverned")]
    public XPCollection<Lector> Governed
    {
        get { return GetCollection<Lector>("Governed"); }
    }


    [Association]
    public Lector CreatedBy;




    private Student[] studentParticipants;


}
