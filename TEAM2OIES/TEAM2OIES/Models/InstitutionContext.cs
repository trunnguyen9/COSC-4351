using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using Dapper;

namespace TEAM2OIES.Models
{
    public class InstitutionContext
    {
        SqlConnection con = new SqlConnection();
        public IEnumerable<InstitutionModel> GetInstitutionList()
        {
            con.ConnectionString = "Server=sqlserver.cs.uh.edu, 1044; Database=TEAM2OIES; User Id = TEAM2OIES; Password = TEAM2OIES#;";
            con.Open();
            string query = "SELECT institutionId, institutionName+' in '+institutionLocation AS institutionNameAndLocation FROM Institution";
            var result = con.Query<InstitutionModel>(query);
            con.Close();            
            return result;            
        }
    }
}