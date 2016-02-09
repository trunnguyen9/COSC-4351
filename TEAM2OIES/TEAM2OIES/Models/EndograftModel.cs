using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class EndograftModel
    {
        public int endograftID { get; set; }

        public int brandID { get; set; }

        public int patientID { get; set; }

        public decimal diameter { get; set; }

        public decimal length { get; set; }

        public decimal entryPoint { get; set; }

        public decimal unilateralLegLength { get; set; }

        public decimal controlaterLegDiameter { get; set; }

        public decimal controlaterLegLength { get; set; }

        public decimal unilateralLegDiameter { get; set; }
    }
}