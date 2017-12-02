using System;
public class ProjectBlog {
	private String titel;
	public String Titel {
		get {
			return titel;
		}
		set {
			titel = value;
		}
	}
	private String blogText;
	public String BlogText {
		get {
			return blogText;
		}
		set {
			blogText = value;
		}
	}
	private String photo;
	public String Photo {
		get {
			return photo;
		}
		set {
			photo = value;
		}
	}
	private Boolean published;
	public Boolean Published {
		get {
			return published;
		}
		set {
			published = value;
		}
	}

	private Project project;
	private Blogtag[] blogtags;
	private SprintData sprintData;

	private Lector lectorAuthor;
	private Student studentAuthor;
	private Comment[] comments;

}
