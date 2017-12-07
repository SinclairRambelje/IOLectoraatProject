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
}
