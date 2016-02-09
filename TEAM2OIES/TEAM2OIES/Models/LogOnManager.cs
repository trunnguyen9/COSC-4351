using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEAM2OIES.Database;

namespace TEAM2OIES.Models
{
    public class LogOnManager
    {
        private TEAM2OIESEntities dre = new TEAM2OIESEntities();
        public string GetFirstName(string userName, string password)
        {
            var query = (from o in dre.Surgeons where o.username == userName && o.password == password select o.firstName);
            return query.First();
            
        }

        public int GetSurgeonID(string userName)
        {
            var query = (from o in dre.Surgeons where o.username == userName select o.surgeonID);
            return query.First();
        }        

        public bool ValidateUser(string userName, string password)
        {
            return (from o in dre.Surgeons where o.username == userName && o.password == password select o).Any();
        }
    }
}