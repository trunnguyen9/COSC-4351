using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;


namespace TEAM2OIES.Models
{
    #region Models
    public class AddTestimonialModels
    {
        [Required]
        [DisplayName("Name")]
        public string TestimonialName { get; set; }

        [Required]
        [DisplayName("Message")]
        public string TestimonialMessage { get; set; }

    }
    #endregion
    public class TestimonialService
    {
        public bool AddTestimonial(string inputName, string inputMessage)
        {
            if (String.IsNullOrEmpty(inputName)) throw new ArgumentException("Value cannot be null or empty.", "inputName");
            if (String.IsNullOrEmpty(inputMessage)) throw new ArgumentException("Value cannot be null or empty.", "inputMessage");

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Server=sqlserver.cs.uh.edu, 1044; Database=TEAM2OIES; User Id = TEAM2OIES; Password = TEAM2OIES#;";
                conn.Open();

                //string _sql = "INSERT INTO Surgeon VALUES (@SurgeonID, @InstitutionID, @FirstName, @LastName, @UserName, @Password, @Email)";
                string searchcount = "SELECT COUNT(*) AS numusers FROM Surgeon";
                string surgeonID;
                //var cmd = new SqlCommand(_sql, conn);
                var countcmd = new SqlCommand(searchcount, conn);
                SqlDataReader countReader = countcmd.ExecuteReader();

                while (countReader.Read())
                {
                    int countID = (int)countReader["numusers"];
                    surgeonID = (countID + 1).ToString();
                    //cmd.Parameters.AddWithValue("@SurgeonID", surgeonID);
                    Debug.WriteLine(surgeonID);
                }
                countReader.Close();

                //cmd.Parameters.AddWithValue("@InstitutionID", institutionID);
                //cmd.Parameters.AddWithValue("@FirstName", firstName);
                //cmd.Parameters.AddWithValue("@LastName", lastName);
                //cmd.Parameters.AddWithValue("@UserName", userName);
                //cmd.Parameters.AddWithValue("@Password", password);
                //cmd.Parameters.AddWithValue("@Email", email);

                //cmd.ExecuteNonQuery();
                conn.Close();
            }
            return true;
        }

    }
}