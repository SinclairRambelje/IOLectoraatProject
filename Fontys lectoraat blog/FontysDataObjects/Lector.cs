using System;
using DevExpress.Xpo;

public class Lector : XPObject
{

	private int lectorID;
      [DbType("NUMERIC(10,0)")] 
    public int LectorID {
		get {
			return lectorID;
		}
		set {
			lectorID = value;
		}
	}


	private User user;
    public User User
    {
        get
        {
            return user;
        }
        set
        {
            if ((user == value))
            {
                return;
            }


            User prevOwner = user;
            user = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                        && (user.Lector == this)))
            {
                user.Lector = null;
            }


            if (!(user == null))
            {
                user.Lector = this;
            }

            OnChanged("Owner");
        }

    }

    [Association("lectorParticipants")]
    public XPCollection<Project> Projects
    {
        get { return GetCollection<Project>("Projects"); }
    }

    [Association("LectorsProjectsGoverned")]
    public XPCollection<Project> ProjectsGoverned
    {
        get { return GetCollection<Project>("ProjectsGoverned"); }
    }

    [Association]
    public XPCollection<Project> CreatedProjects
    {
        get { return GetCollection<Project>("CreatedProjects"); }
    }

}
