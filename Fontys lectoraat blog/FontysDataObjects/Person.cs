using System;
namespace Rescue3DataObjects {
	public class Person {
	
		private String firstname;
		public String Firstname {
			get {
				return firstname;
			}
			set {
				firstname = value;
			}
		}

		private String initialsWithSurname;
		public String InitialsWithSurname {
			get {
				return initialsWithSurname;
			}
			set {
				initialsWithSurname = value;
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

		private String phone;
		public String Phone {
			get {
				return phone;
			}
			set {
				phone = value;
			}
		}

		private String addressLine1;
		public String AddressLine1 {
			get {
				return addressLine1;
			}
			set {
				addressLine1 = value;
			}
		}

		private String addressLine2;
		public String AddressLine2 {
			get {
				return addressLine2;
			}
			set {
				addressLine2 = value;
			}
		}

		private String zipCode;
		public String ZipCode {
			get {
				return zipCode;
			}
			set {
				zipCode = value;
			}
		}
	
		private String place;
		public String Place {
			get {
				return place;
			}
			set {
				place = value;
			}
		}

		private String country;
		public String Country {
			get {
				return country;
			}
			set {
				country = value;
			}
		}

		private User user;

	}

}
