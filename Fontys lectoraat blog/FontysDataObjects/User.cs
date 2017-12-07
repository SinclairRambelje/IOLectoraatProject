using System;
using DevExpress.Xpo;


public class User :  XPObject
{
    private Person person;
    private Lector lector;
    private Admin admin;
    private Student student;

    [DbType("nvarchar(50)")]
		private String userName;
		public String UserName {
			get {
				return userName;
			}
			set {
				userName = value;
			}
		}
		[DbType("nvarchar(50)")]
		private String password;
		public String Password {
			get {
				return password;
			}
			set {
				password = value;
			}
		}
		private DateTime lastLogin;
		public DateTime LastLogin {
			get {
				return lastLogin;
			}
			set {
				lastLogin = value;
			}
		}


    public Person Person
    {
        get
        {
            return person;
        }
        set
        {
            if ((person == value))
            {
                return;
            }


            Person prevOwner = person;
            person = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                        && (person.User == this)))
            {
                person.User = null;
            }


            if (!(person == null))
            {
                person.User = this;
            }

            OnChanged("Owner");
        }

    }
    public Lector Lector
    {
        get
        {
            return lector;
        }
        set
        {
            if ((lector == value))
            {
                return;
            }


            Lector prevOwner = lector;
            lector = value;
            if (IsLoading)
            {
                return;
            }

            if ((!(prevOwner == null)
                        && (lector.User == this)))
            {
                lector.User = null;
            }


            if (!(person == null))
            {
                lector.User = this;
            }

            OnChanged("Owner");
        }

    }


    public string IsUserType()
    {
        if (lector != null)
        {
            return "Lector";
        }
        if (student != null)
        {
            return "Student";
        }
        if (admin != null)
        {
            return "Admin";
        }
     return
        "Failed";

    }

}