using System;
using System.Collections.Generic;
using System.Linq;
using DevExpress.Xpo;
using Newtonsoft.Json.Linq;


public class UserContext {
    public Logic logic;
    public User Login(String username, String password) {
        User user = DevExpress.Xpo.Session.DefaultSession.FindObject<User>
        (
	        DevExpress.Data.Filtering.CriteriaOperator.Parse(
	            "UserName='" + username.Replace("'", "''") + "'"));
        if (user != null)
        {
          
            if (((user.Password == password)
                        && (user.UserName == username)))
            {
                return user;
            }
            else
            {
                return null;
            }

        }

        return null;
    }
	public void GetUser() {
		throw new System.Exception("Not implemented");
	}
	public String Logout(String data) {
		throw new System.Exception("Not implemented");
	}
	public String RegisterAdmin(String data) {

 

	    return "";
	}

    public String Test(String data)
    {


        Person person = new Person();
        person.Firstname = data;
        person.Save();
        return "";
    }

    public String RegisterLector(String data)
    {
        JObject inputData = JObject.Parse(data);

        JObject personData = (JObject)inputData["Person"];
        JObject userData = (JObject)inputData["User"];
        JObject lectorData = (JObject)inputData["Lector"];

        Person person = new Person();
        User user = new User();
        Lector lector = new Lector();

        person.Firstname = personData.GetValue("Firstname").ToString();
        person.Initials = personData.GetValue("Initials").ToString();
        person.Surname = personData.GetValue("Surname").ToString();
        person.Email = personData.GetValue("Email").ToString();
        person.Phone = personData.GetValue("Phone").ToString();
        person.AddressLine1 = personData.GetValue("AddressLine1").ToString();
        person.AddressLine2 = personData.GetValue("AddressLine2").ToString();
        person.ZipCode = personData.GetValue("ZipCode").ToString();
        person.Place = personData.GetValue("Place").ToString();

 
        user.UserName = userData.GetValue("UserName").ToString();
        user.Password = userData.GetValue("Password").ToString();

        lector.LectorID = (int)lectorData.GetValue("LectorID");

        user.Person = person;
        user.Lector = lector;

        user.Save();

        return "Succes";
    }

    public String RegisterStudent(String data)
    {

        return "";
    }

    public void SubscribeProject() {
		throw new System.Exception("Not implemented");
	}
	public void SubscribeAllProjectBlogs() {
		throw new System.Exception("Not implemented");
	}
	public void SubscribeAllLectorateBlogs() {
		throw new System.Exception("Not implemented");
	}
	public void AcceptComment() {
		throw new System.Exception("Not implemented");
	}
	public void ModifyProfile() {
		throw new System.Exception("Not implemented");
	}
	public void ModifyUnapprovedComment() {
		throw new System.Exception("Not implemented");
	}
	public void ModifyComment() {
		throw new System.Exception("Not implemented");
	}
	public void RejectComment() {
		throw new System.Exception("Not implemented");
	}
	public void IsAdmin() {
		throw new System.Exception("Not implemented");
	}
	public void IsStudent() {
		throw new System.Exception("Not implemented");
	}
	public void IsLector() {
		throw new System.Exception("Not implemented");
	}
    public List<Lector> GetAllLectors()
    {
        XPCollection<Lector> collection = new XPCollection<Lector>();
        return collection.ToList();
    }

}
