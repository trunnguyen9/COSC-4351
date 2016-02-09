using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEAM2OIES.Database;
using TEAM2OIES.Models;

namespace TEAM2OIES.Models
{
    public class RegisterManager
    {
        private TEAM2OIESEntities dre = new TEAM2OIESEntities();
        public void Add(RegisterModel user)
        {
            Database.Surgeon surgeon = new Database.Surgeon();
            surgeon.institutionID = user.institutionId;
            surgeon.firstName = user.firstName;
            surgeon.lastName = user.lastName;
            surgeon.email = user.email;
            surgeon.username = user.username;
            surgeon.password = user.Password;
            surgeon.accessLevel = user.accessLevel;
            surgeon.active = true;
            dre.AddToSurgeons(surgeon);
            dre.SaveChanges();
        }
        public bool IsUserLoginIDExist(string userLogin)
        {
            return (from o in dre.Surgeons where o.username == userLogin select o).Any();
        }

        public string GetAccessLevel(string userName, string password)
        {
            var query = (from o in dre.Surgeons where o.username == userName && o.password == password select o.accessLevel);
            return query.First();
        }

    }
}