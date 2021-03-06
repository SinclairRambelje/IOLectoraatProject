using System;
using System.Collections.Generic;

public class EventBlog {
	private String titel;
	public String Titel {
		get {
			return titel;
		}
		set {
			titel = value;
		}
	}
	private List<String> attachment;
	public List<String> Attachment {
		get {
			return attachment;
		}
		set {
			attachment = value;
		}
	}
	private String blogtext;
	public String Blogtext {
		get {
			return blogtext;
		}
		set {
			blogtext = value;
		}
	}
	private String blogpicture;
	public String Blogpicture {
		get {
			return blogpicture;
		}
		set {
			blogpicture = value;
		}
	}
	private Boolean published2;
	public Boolean Published2 {
		get {
			return published2;
		}
		set {
			published2 = value;
		}
	}

	private Lector author;
	private Blogtag[] blogtags;
	private Project project;

	private Comment comments;

}
