using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class SeriesModel
    {
        public int seriesID { get; set; }

        public int studyID { get; set; }

        public int originalSeriesID { get; set; }

        public string seriesDescription { get; set; }

        public DateTime seriesDate { get; set; }

        public int totalNumberOfSlices { get; set; }

        public int ROIBegin { get; set; }

        public decimal illiacBif { get; set; }

        public string comment { get; set; }

        public int ROIEnd { get; set; }

        public int totalSlicesInROI { get; set; }

        public decimal lengthROIINcm { get; set; }

    }
}