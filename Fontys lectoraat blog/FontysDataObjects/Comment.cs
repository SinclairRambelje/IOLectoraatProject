using System;
public class Comment {
	private String name;
	public String Name {
		get {
			return name;
		}
		set {
			name = value;
		}
	}
	private String email;
	public String Email {
		get {
			return email;
		}
		set {
			email = value;
		}
	}
	private String website;
	public String Website {
		get {
			return website;
		}
		set {
			website = value;
		}
	}
	private String message;
	public String Message {
		get {
			return message;
		}
		set {
            message = value;
		}
	}
	private Boolean approved;
	public Boolean Approved {
		get {
			return approved;
		}
		set {
			approved = value;
		}
	}

	private LectoraatBlog lectoraatBlog;

}
