using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class StudyModel
    {
        public int studyID { get; set; }

        public int patientID { get; set; }

        public int originalStudyID { get; set; }

        public string studyDescription { get; set; }

        public DateTime studyDate { get; set; }

        public int CT { get; set; }

        public decimal deplay { get; set; }

    }
}