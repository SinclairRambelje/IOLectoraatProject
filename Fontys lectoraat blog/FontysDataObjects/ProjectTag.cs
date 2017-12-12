using System;
using DevExpress.Xpo;

public class ProjectTag : XPObject
{
	private String tag;
    [DbType("nvarchar(1000)")]
    public String Tag {
		get {
			return tag;
		}
		set {
			tag = value;
		}
	}
    [Association]
    public Project project;

}
