using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class CFDModel
    {
        public int cfdID { get; set; }

        public DateTime currentDate { get; set; }

        public bool done { get; set; }

        public int patientID { get; set; }
    }
}