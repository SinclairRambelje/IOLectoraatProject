using System;
using DevExpress.Xpo;

public class Person : XPObject
{


    [DbType("nvarchar(1024)")] private String firstname;

    public String Firstname
    {
        get { return firstname; }
        set { firstname = value; }
    }

    [DbType("nvarchar(1024)")] private String initials;

    public String Initials
    {
        get { return initials; }
        set { initials = value; }
    }

    [DbType("nvarchar(1024)")] private String surname;

    public String Surname
    {
        get { return surname; }
        set { surname = value; }
    }



    [DbType("nvarchar(1024)")] private String email;

    public String Email
    {
        get { return email; }
        set { email = value; }
    }

    [DbType("nvarchar(1024)")] private String phone;

    public String Phone
    {
        get { return phone; }
        set { phone = value; }
    }

    [DbType("nvarchar(512)")] private String addressLine1;

    public String AddressLine1
    {
        get { return addressLine1; }
        set { addressLine1 = value; }
    }

    [DbType("nvarchar(512)")] private String addressLine2;

    public String AddressLine2
    {
        get { return addressLine2; }
        set { addressLine2 = value; }
    }

    [DbType("nvarchar(512)")] private String zipCode;

    public String ZipCode
    {
        get { return zipCode; }
        set { zipCode = value; }
    }

    [DbType("nvarchar(512)")] private String place;

    public String Place
    {
        get { return place; }
        set { place = value; }
    }


    private User user;

    public User User
    {
        get { return user; }
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
                 && (user.Person == this)))
            {
                user.Person = null;
            }


            if (!(user == null))
            {
                user.Person = this;
            }

            OnChanged("Owner");
        }

    }
}


