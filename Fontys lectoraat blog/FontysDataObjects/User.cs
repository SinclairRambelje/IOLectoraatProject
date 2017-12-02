using System;
namespace Rescue3DataObjects {
	public class User {
		private Person person;
		public Person Person {
			get {
				return person;
			}
			set {
				person = value;
			}
		}

		private String userName;
		public String UserName {
			get {
				return userName;
			}
			set {
				userName = value;
			}
		}

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

	}

}
