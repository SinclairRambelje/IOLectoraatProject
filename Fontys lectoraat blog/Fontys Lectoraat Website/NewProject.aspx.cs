using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Fontys_Lectoraat_Website.Control
{
    public partial class NewProject : System.Web.UI.Page
    {


        private string projectTags = null;
        private string lectors = null;


        private string listFilter_for_parts = null;
        StringBuilder output_part = new StringBuilder();

        private Logic logic;

        private string projectThemaPhotoPath;

        public string ProjectTags
        {
            get { return projectTags; }

        }

        public string Lectors
        {
            get { return lectors; }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            logic = new Logic();

            projectTags = getProjectTags();
            lectors = getLectors();


            listFilter_for_parts = output_part.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //  List<String> tags = hdnSelectedTags.Value.Split(',').ToList();

            //Button1.Text = txtLooptijdtot.Value;

            //var date = DateTime.ParseExact("12/11/2017",
            //                   "MM/dd/yyyy",
            //                   CultureInfo.InvariantCulture);

            if (uploadProjectThemaPhoto() != false)
            {

        

             


                var inputData = JObject.FromObject(new
                {



                     Titel = txtTitel.Value,
                 Tags = hdnSelectedTags.Value,
                 Donators = hdnSelectedDonators.Value,
                    Participants = hdnSelectedParticipants.Value,
                 Partners = hdnSelectedParters.Value,
                 Goverend = hdnSelectedGoverend.Value,
                 StartDate = txtLooptijdvan.Value,
                 EndDate = txtLooptijdtot.Value,
                    ThemePhotoFilePath = projectThemaPhotoPath,
                    Proposal = tbWYSIWYG.Text


            });

                logic.ProjectContext.New_Project(inputData.ToString());

            }





        }

        public Boolean uploadProjectThemaPhoto()
        {
            if (FileUploadControl.HasFile)
            {
                try
                {


                    string filename = Path.GetFileName(FileUploadControl.FileName);

                    String path = Server.MapPath("~/App_Data/" + txtTitel.Value + "/");
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }


                    projectThemaPhotoPath = path + filename;
                    FileUploadControl.SaveAs(path + filename);
                    // StatusLabel.Text = "Upload status: File uploaded!";

                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            return true;
        }
           
  



        private string getProjectTags()
        {


            StringBuilder output = new StringBuilder();

            output.Append("[");

            List<ProjectTag> projectTags = logic.ProjectContext.GetAllProjectTags();
            int count = 0;

            foreach (ProjectTag projectTag in projectTags)
            {
                count++;

                output_part.Append(projectTag.Tag);
                output.Append("\"" + projectTag.Tag + "\"");

                if (count != projectTags.Count)
                {
                    output_part.Append(",");
                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
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

    
                output.Append("\"" + lector.User.Person.Firstname + " " + lector.User.Person.Surname + " " + lector.User.Person.Initials  + "\"");

                if (count != lectors.Count)
                {
                  
                    output.Append(",");
                }
            }
            output.Append("];");

            return output.ToString();
        }

    }

}