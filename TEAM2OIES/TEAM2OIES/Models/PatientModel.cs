using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class PatientModel
    {
        public string PatientID { get; set; }

        public int surgeonID { get; set; }

        public int originalID { get; set; }

        public string sex { get; set; }

        public int age { get; set; }

        public DateTime entryDate { get; set; }

        public DateTime dateOfSurgery { get; set; }
    }
}