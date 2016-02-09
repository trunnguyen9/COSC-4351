using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM2OIES.Models
{
    public class AuditModel
    {
        public int auditID { get; set; }

        public int auditUserID { get; set; }

        public string auditUserName { get; set; }

        public DateTime auditDate { get; set; }

        public string auditTable { get; set; }

        public string auditAttribute { get; set; }

        public string access { get; set; }

    }
}