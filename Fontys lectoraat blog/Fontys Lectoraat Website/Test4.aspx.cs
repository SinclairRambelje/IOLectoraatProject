using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website
{
    public partial class Test4 : System.Web.UI.Page
    {
        private Logic logic;

        private string projects;
        private string projecttags;
        private const int controlCount = 1;

        //method variables
        private int countmethodcheckboxes;
        private int countmethodtxtboxes;

    
        public String Projects
        {
            get { return projects; }
        }
        public String Tags
        {
            get { return projecttags; }
        }
        public string Lectors
        {
            get { return getLectors(); }

        }

        private List<HtmlGenericControl> MyControlState0
        {
            get
            {
                List<HtmlGenericControl> MyControlState0 = (List<HtmlGenericControl>)Session["MyControlState0"];
                if (object.Equals(MyControlState0, null))
                {
                    MyControlState0 = new List<HtmlGenericControl>();
                }

                return MyControlState0;
            }
            set
            {
                Session["MyControlState0"] = value;
            }

        }

        private List<HtmlGenericControl> MyControlState1
        {
            get
            {
                List<HtmlGenericControl> MyControlState1 = (List<HtmlGenericControl>)Session["MyControlState1"];
                if (object.Equals(MyControlState1, null))
                {
                    MyControlState1 = new List<HtmlGenericControl>();
                }

                return MyControlState1;
            }
            set
            {
                Session["MyControlState1"] = value;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new Logic();
            projects = GetProjectData();
            projecttags = GetBLogTags();

            countmethodcheckboxes = 1;
            countmethodtxtboxes = 1;

            foreach (Project project in logic.ProjectContext.GetAllProjects())
            {
                projectselect.Items.Add(new ListItem("test", "test"));
            }
        //CheckBox checkBox1 = new CheckBox();
        //    checkBox1.ID = "cbMethode1";
        //    myGenericUL.Controls.Add(checkBox1);
        //    myGenericUL.Controls.Add(new LiteralControl("<label>Veld</label> "));
        //    CheckBox checkBox2 = new CheckBox();
        //    checkBox2.ID = "cbMethode2";
        //    myGenericUL.Controls.Add(checkBox2);
        //    myGenericUL.Controls.Add(new LiteralControl("<label>Bieb</label> "));
        //    CheckBox checkBox3 = new CheckBox();
        //    checkBox3.ID = "cbMethode3";
        //    myGenericUL.Controls.Add(checkBox3);
        //    myGenericUL.Controls.Add(new LiteralControl("<label>Werkplaats</label> "));
        //    CheckBox checkBox4 = new CheckBox();
        //    checkBox4.ID = "cbMethode4";
        //    myGenericUL.Controls.Add(checkBox4);
        //    myGenericUL.Controls.Add(new LiteralControl("<label>Lab/showroom</label> "));

            //    myGenericUL.Controls.Add(new LiteralControl("<br> "));
            //    TextBox textbox1 = new TextBox();
            //    textbox1.ID = "tbMethode1";
            //    textbox1.TextMode = TextBoxMode.MultiLine;
            //    textbox1.Height = 100;
            //    textbox1.Width = 300;
            //    myGenericUL.Controls.Add(textbox1);

            //< asp:TextBox ID = "TextBox1" runat = "server" Height = "97px" TextMode = "MultiLine" Width = "288px" ></ asp:TextBox >

            if (Page.IsPostBack)
            {
                foreach (HtmlGenericControl item in MyControlState0)
                {
                    PlaceHolderMethode.Controls.Add(item);
                }
                foreach (HtmlGenericControl item in MyControlState1)
                {
                    PlaceHolderResult.Controls.Add(item);
                }
            }

            if (MyControlState0.Count == 0)
            {
               AddSprintmethod();
            }
            if (MyControlState1.Count == 0)
            {
                AddSprintresult();
            }

        }
      
        public string GetProjectData()
        {
            List<Project> projects = logic.ProjectContext.GetAllProjects();
            if (projects.Count == 0)
            {
                return "";
            }

            JArray jArrayProjects = new JArray();
          

            foreach (Project project in projects)
            {

            

                var inputData = JObject.FromObject(new
                {
                   
                    title = project.Titel
         
                });
                jArrayProjects.Add(inputData);
            }
            return jArrayProjects.ToString();
        }

        private string GetBLogTags()
        {


            StringBuilder output = new StringBuilder();

            output.Append("[");

            List<Blogtag> blogtags = logic.ProjectBlogContext.GetAllBlogTags();
            int count = 0;

            foreach (Blogtag blogtag in blogtags)
            {
                count++;

                output.Append("\"" + blogtag.Tag + "\"");

                if (count != blogtags.Count)
                {
                   
                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            AddSprintmethod();

        }

        private void AddSprintmethod()
        {
            int countvariable = MyControlState0.Count();
            if (countvariable != 0)
            {
                countmethodcheckboxes = countvariable * 4;
                countmethodtxtboxes = countvariable;
            }
            else
            {
                countmethodcheckboxes = 0;
                countmethodtxtboxes = 0;
            }

            HtmlGenericControl myGenericUL = new HtmlGenericControl();


            countmethodcheckboxes++;
            myGenericUL.Controls.Add(new LiteralControl("<br> "));
            CheckBox checkBox1 = new CheckBox();
            checkBox1.ID = "cbMethode" + countmethodcheckboxes;
            checkBox1.CssClass = "cbMethode" + countmethodtxtboxes;
            countmethodcheckboxes++;
            myGenericUL.Controls.Add(checkBox1);
            myGenericUL.Controls.Add(new LiteralControl("<label>Veld</label> "));
            CheckBox checkBox2 = new CheckBox();
            checkBox2.ID = "cbMethode" + countmethodcheckboxes;
            checkBox2.CssClass = "cbMethode" + countmethodtxtboxes;
            countmethodcheckboxes++;
            myGenericUL.Controls.Add(checkBox2);
            myGenericUL.Controls.Add(new LiteralControl("<label>Bieb</label> "));
            CheckBox checkBox3 = new CheckBox();
            checkBox3.ID = "cbMethode" + countmethodcheckboxes;
            checkBox3.CssClass = "cbMethode" + countmethodtxtboxes;
            countmethodcheckboxes++;
            myGenericUL.Controls.Add(checkBox3);
            myGenericUL.Controls.Add(new LiteralControl("<label>Werkplaats</label> "));
            CheckBox checkBox4 = new CheckBox();
            checkBox4.ID = "cbMethode" + countmethodcheckboxes;
            checkBox4.CssClass = "cbMethode" + countmethodtxtboxes;

            myGenericUL.Controls.Add(checkBox4);
            myGenericUL.Controls.Add(new LiteralControl("<label>Lab/showroom</label> "));

          //  myGenericUL.Controls.Add(new LiteralControl("<script>"+ "  jQuery(\'input." + "cbMethode" + countmethodtxtboxes + "\').on(\'change\',\r\n                function() {\r\n                    jQuery(\'input." + "cbMethode" + countmethodtxtboxes + "').not(this).prop(\'checked\', false);\r\n\r\n            });" +"</script> "));
          //  PlaceHolder1.Controls.Add(new LiteralControl("<script>" + "  $(\'input." + "cbMethode" + countmethodtxtboxes + "\').on(\'change\',\r\n                function() {\r\n                    $(\'input." + "cbMethode" + countmethodtxtboxes + "').not(this).prop(\'checked\', false);\r\n\r\n            });" + "</script> "));

            countmethodtxtboxes++;
            





            countmethodtxtboxes++;
            myGenericUL.Controls.Add(new LiteralControl("<br> "));
            TextBox textbox1 = new TextBox();
            textbox1.ID = "tbMethode" + countmethodtxtboxes;

            textbox1.TextMode = TextBoxMode.MultiLine;
            textbox1.Height = 100;
            textbox1.Width = 300;
            myGenericUL.Controls.Add(textbox1);

            PlaceHolderMethode.Controls.Add(myGenericUL);
            List<HtmlGenericControl> setup = MyControlState0;
            setup.Add(myGenericUL);
            MyControlState0 = setup;

        }


        private int _CurrentControlcount
        {
            get
            {
                int _currentControlcount = object.Equals(Session["_currentControlcount"], null) ? controlCount : (int)Session["_currentControlcount"];
                if (Object.Equals(_currentControlcount, null))
                {
                    _currentControlcount = new int();
                    _currentControlcount = 0;
                    Session["_currentControlcount"] = _currentControlcount;

                }
                return _currentControlcount;
            }
            set
            {
                Session["_currentControlcount"] = value;
            }
        }

        protected void lbuttonAddResult_Click(object sender, EventArgs e)
        {
            AddSprintresult();
        }

        private void AddSprintresult()
         


        {
            int countresultcheckboxes;
            int countresulttxtboxes;
            int countresultfileupload;


            int countvariable = MyControlState1.Count();
            if (countvariable != 0)
            {
                countresultcheckboxes = countvariable * 2;
                countresulttxtboxes = countvariable;
                countresultfileupload = countvariable;
            }
            else
            {
                countresultcheckboxes = 0;
                countresulttxtboxes = 0;
                countresultfileupload = 0;
            }

            HtmlGenericControl GenericControl = new HtmlGenericControl();
            GenericControl.Controls.Add(new LiteralControl("<br>"));
            countresultcheckboxes++;
            GenericControl.Controls.Add(new LiteralControl("Bestand"));
            CheckBox checkBox1 = new CheckBox();
            checkBox1.ID = "cbResult" + countresultcheckboxes;
            countresultcheckboxes++;
            GenericControl.Controls.Add(checkBox1);
            GenericControl.Controls.Add(new LiteralControl("URL"));
            CheckBox checkBox2 = new CheckBox();
            checkBox2.ID = "cbResult" + countresultcheckboxes;
            GenericControl.Controls.Add(checkBox2);

            GenericControl.Controls.Add(new LiteralControl("<br>"));
            countresultfileupload++;
                    FileUpload fileUpload = new FileUpload();
            fileUpload.ID = "fileUpload" + countresultfileupload;
            GenericControl.Controls.Add(fileUpload);


            countresulttxtboxes++;
            GenericControl.Controls.Add(new LiteralControl("<br> "));
            TextBox textbox1 = new TextBox();
            textbox1.ID = "tbResult" + countresulttxtboxes;

            textbox1.TextMode = TextBoxMode.MultiLine;
            textbox1.Height = 100;
            textbox1.Width = 300;
            GenericControl.Controls.Add(textbox1);

            PlaceHolderMethode.Controls.Add(GenericControl);
            List<HtmlGenericControl> setup = MyControlState1;
            setup.Add(GenericControl);
            MyControlState1 = setup;
        }


        private string getLectors()
        {


            StringBuilder output = new StringBuilder();

            output.Append("[");

            List<Lector> lectors = logic.UserContext.GetAllLectors();
            int count = 0;

            foreach (Lector lector in lectors)
            {
                count++;


                output.Append("\"" + lector.User.Person.Firstname + " " + lector.User.Person.Surname + " " + lector.User.Person.Initials + "\"");

                if (count != lectors.Count)
                {

                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
//            Description
//       Method



//Description
//URL
//Filepath

        var inputData = JObject.FromObject(new
 {

            ProjectBlog = new
            {
                Project = "",
                Titel = "",
                BlogText = "",
                PicturePath = "",
                Published = "",

            },
            SprintData = new
            {
                Subquestion = "",
                Subquestion_Goal = "",
                ResearchMethod = "",
                Result = "",
                Involved = "",
                Impact = "",
                WhatNow = "",
            },


     
   


  
 });


        }
    }
}