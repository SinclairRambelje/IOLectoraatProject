using System;
public class Student : Rescue3DataObjects.User  {
	private int studentnummer;
	public int Studentnummer {
		get {
			return studentnummer;
		}
		set {
			studentnummer = value;
		}
	}


}
