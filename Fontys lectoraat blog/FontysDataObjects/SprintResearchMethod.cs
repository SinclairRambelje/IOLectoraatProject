using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DevExpress.Xpo;

namespace FontysDataObjects
{
    public class SprintResearchMethod : XPObject
    {
        private String description;
        [DbType("nvarchar(2000)")]
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
        private String method;
        [DbType("nvarchar(50)")]
        public String Method
        {
            get
            {
                return method;
            }
            set
            {
                method = value;
            }
        }

        [Association]
        public SprintData SprintData;

    }


}
