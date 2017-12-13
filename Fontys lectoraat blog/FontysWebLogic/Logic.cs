using System;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using FontysWebLogic.Fontys;


public class Logic {
	private UserContext userContext;
	private ProjectContext projectContext;
	private ProjectBlogContext projectBlogContext;
	private EventBlogContext eventblogContext;
	private LectorateBlogContext lectorateBlogContext;

    public UserContext UserContext
    {
        get { return userContext; }
        set { userContext = value; }
    }

    public ProjectContext ProjectContext
    {
        get { return projectContext; }
        set { projectContext = value; }
    }

    public ProjectBlogContext ProjectBlogContext
    {
        get { return projectBlogContext; }
        set { projectBlogContext = value; }
    }

    public EventBlogContext EventblogContext
    {
        get { return eventblogContext; }
        set { eventblogContext = value; }
    }

    public LectorateBlogContext LectorateBlogContext
    {
        get { return lectorateBlogContext; }
        set { lectorateBlogContext = value; }
    }

    public Logic()
    {
  

        this.userContext = new UserContext();
        this.projectContext = new ProjectContext();
        this.projectBlogContext = new ProjectBlogContext();
        this.eventblogContext = new EventBlogContext();
        this.lectorateBlogContext = new LectorateBlogContext();

        projectContext.logic = this;
    }

  


}
