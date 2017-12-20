using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using FontysWebLogic.Fontys;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace WindowsFormTestApp
{
    public partial class AdminAppForm : Form
    {
        private Logic logic;
        public AdminAppForm()
        {
            InitializeComponent();
            logic = new Logic();

            ConnectionHelper.Connect(AutoCreateOption.DatabaseAndSchema);
            Session session = new Session();
            XpoDefault.Session = session;
        }

        private void BtnCreateLector_Click(object sender, EventArgs e)
        {

         
        }

        private void BtnNewLector_Click(object sender, EventArgs e)
        {
            var inputData = JObject.FromObject(new
            {

                Person =  new
                {
                    Firstname = tbFirstname.Text,
                    Initials = tbInitials.Text,
                    Surname = TbSurname.Text,
                    Email = "",
                    Phone = "",
                    AddressLine1 = "",
                    AddressLine2 = "",
                    ZipCode = "",
                    Place = ""
                },

                User = new
                {
                    UserName = TbUsername.Text,
                    Password = TbPassword.Text,
                  
                },

                Lector = new
                {
                    LectorID = 0
                },
            });

            logic.UserContext.RegisterLector(inputData.ToString());


//            Firstname
//Initials
//Surname
//Email
//Phone
//AddressLine1
//AddressLine2
//ZipCode
//Place

//UserName
//Password

//LectorID
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            logic.ProjectContext.AddProjectTag(tbProjecttag.Text);
        }

        private void tbProjecttag_TextChanged(object sender, EventArgs e)
        {

        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnBlogTag_Click(object sender, EventArgs e)
        {
            logic.ProjectBlogContext.AddBlogTag(tbBlogTag.Text);
        }
    }
}
