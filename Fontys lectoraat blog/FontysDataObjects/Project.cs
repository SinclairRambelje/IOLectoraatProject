using System;
using System.Collections.Generic;

public class Project {
	private String titel;
	public String Titel {
		get {
			return titel;
		}
		set {
			titel = value;
		}
	}
	private String proposal;
	public String Proposal {
		get {
			return proposal;
		}
		set {
			proposal = value;
		}
	}
	private List<String> donors;
	public List<String> Donors {
		get {
			return donors;
		}
		set {
			donors = value;
		}
	}
	private List<DateTime> duration;
	public List<DateTime> Duration {
		get {
			return duration;
		}
		set {
			duration = value;
		}
	}
	private String result;
	public String Result {
		get {
			return result;
		}
		set {
			result = value;
		}
	}
	private List<string> participants;
	public List<string> Participants {
		get {
			return participants;
		}
		set {
			participants = value;
		}
	}

	private ProjectTag[] tags;
	private Lector[] lectorParticipants;

	private Lector createdBy;
	private Student[] studentParticipants;
	private Lector[] governed;

}
