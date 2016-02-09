using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using TEAM2OIES.Models;

namespace TEAM2OIES.Controllers
{

    [HandleError]
    public class AccountController : Controller
    {
        private InstitutionContext ICon = new InstitutionContext();
        private AuditManager audit = new AuditManager();
        private AuditModel AM = new AuditModel();
        private LogOnManager LM = new LogOnManager();
        
        // **************************************
        // URL: /Account/Register
        // **************************************
        [HttpGet]
        public ActionResult Register()
        {
            RegisterModel IData = new RegisterModel();            
            IData.InstitutionList = new SelectList(ICon.GetInstitutionList(), "institutionId", "institutionNameAndLocation");
            IData.accessLevelList = new SelectList(
                                            new List<SelectListItem>
                                            {
                                                new SelectListItem {Selected = false, Text = "Surgeon", Value = "surgeon"},
                                                new SelectListItem {Selected = false, Text = "Customer Service", Value = "customer service"},
                                                new SelectListItem {Selected = false, Text = "Auditor", Value = "auditor"},
                                            }, "Value", "Text", 1);
            return View(IData);
        }

        [HttpPost]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                RegisterManager registerManager = new RegisterManager();

                if (!registerManager.IsUserLoginIDExist(model.username))
                {
                    Roles.AddUserToRole(model.username, model.accessLevel);       
                    registerManager.Add(model);
                    FormsAuthentication.SetAuthCookie(model.username, false);
                    AM.auditUserID = LM.GetSurgeonID(model.username);
                    AM.auditUserName = model.username;
                    AM.auditDate = DateTime.Now;
                    AM.auditAttribute = "All";
                    AM.auditTable = "Surgeon";
                    AM.access = "I";
                    audit.Add(AM);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "LogID already taken");
                }                   
            }
            model.InstitutionList = new SelectList(ICon.GetInstitutionList(), "institutionId", "institutionNameAndLocation");
            model.accessLevelList = new SelectList(
                                            new List<SelectListItem>
                                            {
                                                new SelectListItem {Selected = false, Text = "Surgeon", Value = "surgeon"},
                                                new SelectListItem {Selected = false, Text = "Customer Service", Value = "customer service"},
                                                new SelectListItem {Selected = false, Text = "Auditor", Value = "auditor"},
                                            }, "Value", "Text", 1);
            return View(model);
        }

        
        // **************************************
        // URL: /Account/LogOff
        // **************************************

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }

        // **************************************
        // URL: /Account/LogOn
        // **************************************

        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            LogOnManager logOnManager = new LogOnManager();
            if (ModelState.IsValid)
            {
                if (logOnManager.ValidateUser(model.UserName, model.Password))
                {                    
                    FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
                    AM.auditUserID = LM.GetSurgeonID(model.UserName);
                    AM.auditUserName = model.UserName;
                    AM.auditDate = DateTime.Now;
                    AM.auditAttribute = "All";
                    AM.auditTable = "Surgeon";
                    AM.access = "Q";
                    audit.Add(AM);
                    if (!String.IsNullOrEmpty(returnUrl))
                    {
                        return Redirect(returnUrl);
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }


    }
}
