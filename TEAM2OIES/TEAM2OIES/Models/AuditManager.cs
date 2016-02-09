using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEAM2OIES.Database;
using System.Data.SqlClient;
using Dapper;

namespace TEAM2OIES.Models
{
    public class AuditManager
    {
        private TEAM2OIESEntities dre = new TEAM2OIESEntities();
        private SqlConnection con = new SqlConnection();
        public void Add(AuditModel user)
        {
            Database.Audit audit = new Database.Audit();
            audit.auditUserID = user.auditUserID;
            audit.auditUsername = user.auditUserName;
            audit.auditDate = user.auditDate;
            audit.auditAttribute = user.auditAttribute;
            audit.auditTable = user.auditTable;
            audit.access = user.access;            
            dre.AddToAudits(audit);
            dre.SaveChanges();
        }        
        
        public IEnumerable<AuditModel> GetAllAudits()
        {
            con.ConnectionString = "Server=sqlserver.cs.uh.edu, 1044; Database=TEAM2OIES; User Id = TEAM2OIES; Password = TEAM2OIES#;";
            con.Open();
            string query = "SELECT * FROM Audit";
            var result = con.Query<AuditModel>(query);
            con.Close();
            return result;
        }
    }
}