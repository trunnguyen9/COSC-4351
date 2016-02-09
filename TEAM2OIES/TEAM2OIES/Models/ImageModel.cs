using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class ImageModel
    {
        public int imageID { get; set; }

        public int seriesID { get; set; }

        public int imageOrder { get; set; }

        public string imageFileName { get; set; }

        public decimal sliceThickness { get; set; }

        public decimal pixelSize { get; set; }

    }
}