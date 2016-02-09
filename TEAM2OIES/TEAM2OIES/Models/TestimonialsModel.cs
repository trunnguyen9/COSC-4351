using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


namespace TEAM2OIES.Models
{
    public class TestimonialsModel
    {
        public int testimonialID { get; set; }

        public int surgeonID { get; set; }        

        public string testimonialContent { get; set; }

        public DateTime testimonialDate { get; set; }

        public string firstName { get; set; }

        public string lastName { get; set; }       


    }    
}