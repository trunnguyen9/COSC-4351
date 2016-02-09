using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEAM2OIES.Database;
using TEAM2OIES.Models;
using System.Data.SqlClient;
using Dapper;

namespace TEAM2OIES.Models
{
    public class TestimonialsManager
    {
        private SqlConnection con = new SqlConnection();
        private TEAM2OIESEntities dre = new TEAM2OIESEntities();
        public IEnumerable<TestimonialsModel> GetAllTestimonials()
        {
            con.ConnectionString = "Server=sqlserver.cs.uh.edu, 1044; Database=TEAM2OIES; User Id = TEAM2OIES; Password = TEAM2OIES#;";
            con.Open();
            string query = "SELECT Testimonials.testimonialID, Testimonials.surgeonID, Testimonials.testimonialContent, Testimonials.testimonialDATE, Surgeon.firstName, Surgeon.lastName FROM Testimonials INNER JOIN Surgeon ON Testimonials.surgeonID = Surgeon.surgeonId";
            var result = con.Query<TestimonialsModel>(query);           
            con.Close();
            return result;
        }

        public IEnumerable<TestimonialsModel> SearchTestimonials(string txtSearch)
        {
            con.ConnectionString = "Server=sqlserver.cs.uh.edu, 1044; Database=TEAM2OIES; User Id = TEAM2OIES; Password = TEAM2OIES#;";
            con.Open();
            string query = "SELECT Testimonials.testimonialID, Testimonials.surgeonID, Testimonials.testimonialContent, Testimonials.testimonialDATE, Surgeon.firstName, Surgeon.lastName FROM Testimonials INNER JOIN Surgeon ON Testimonials.surgeonID = Surgeon.surgeonId WHERE Testimonials.testimonialContent LIKE '%" + txtSearch + "%'";
            var result = con.Query<TestimonialsModel>(query);
            con.Close();
            return result;
        }
        public void Add(TestimonialsModel user)        
        {
            Database.Testimonial testimonial = new Database.Testimonial();
            testimonial.testimonialContent = user.testimonialContent;
            testimonial.testimonialDATE = user.testimonialDate;
            testimonial.surgeonID = user.surgeonID;
            dre.AddToTestimonials(testimonial);
            dre.SaveChanges();
        }
    }
}
