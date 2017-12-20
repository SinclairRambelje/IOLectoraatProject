using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DevExpress.Xpo;

namespace FontysDataObjects
{
    public class SprintResult
  : XPObject
    {
        private String description;
        [DbType("nvarchar(max)")]
        public String Description
        {
            get
            {
                return description;
            }
            set
            {
                description = value;
            }
        }
        private String uRl;
        [DbType("nvarchar(2000)")]
        public String URL
        {
            get
            {
                return uRl;
            }
            set
            {
                uRl = value;
            }
        }

        private String filepath;
        [DbType("nvarchar(2000)")]
        public String Filepath
        {
            get
            {
                return filepath;
            }
            set
            {
                filepath = value;
            }
        }

      

        [Association]
        public SprintData SprintData;

    }
}
