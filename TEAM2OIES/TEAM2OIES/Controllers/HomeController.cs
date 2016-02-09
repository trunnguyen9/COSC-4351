using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TEAM2OIES.Database;
using TEAM2OIES.Models;
using PagedList;
using Ionic.Zip;
using EvilDICOM.Core;
using System.Diagnostics;
using System.IO;

namespace TEAM2OIES.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private AuditManager audit = new AuditManager();
        private AuditModel AM = new AuditModel();
        private TestimonialsManager TM = new TestimonialsManager();
        private TestimonialsModel model = new TestimonialsModel();
        private LogOnManager LM = new LogOnManager();

        public ActionResult Index()
        {
            ViewData["Message"] = "TEAM2OIES Home Page";

            return View();
        }

        public ActionResult About()
        {
            ViewData["Message"] = "Our Commitment...";

            return View();
        }

        public ActionResult Contact()
        {
            ViewData["Message"] = "Contact TEAM2OIES";

            return View();
        }

        public ActionResult Testimonials(string txtSearch)
        {
            if (Request.IsAuthenticated)
            {
                AM.auditUserID = LM.GetSurgeonID(User.Identity.Name);
                AM.auditUserName = User.Identity.Name;
                AM.auditDate = DateTime.Now;
                AM.auditAttribute = "All";
                AM.auditTable = "Testimonial";
                AM.access = "Q";
                audit.Add(AM);
            }
            ViewData["Message"] = "See What Others are Saying!";
            if (txtSearch == null)
            {                
                return View(TM.GetAllTestimonials());
            }
            else
            {
                if (txtSearch.Equals("") == false)
                {                                       
                    ViewData["Search"] = txtSearch;
                    return View(TM.SearchTestimonials(txtSearch));
                }
                else
                {
                    return RedirectToAction("Testimonials", "Home");
                }
            }
        }
        [Authorize]
        [HttpPost]
        public ActionResult PostTestimonial(string testimonialContent)
        {
            if (testimonialContent.Equals("") == false)
            {      
                model.testimonialContent = testimonialContent;
                model.testimonialDate = DateTime.Now;
                model.surgeonID = LM.GetSurgeonID(User.Identity.Name);
                AM.auditUserID = model.surgeonID;
                AM.auditUserName = User.Identity.Name;
                AM.auditDate = DateTime.Now;
                AM.auditAttribute = "All";
                AM.auditTable = "Testimonial";
                AM.access = "I";
                audit.Add(AM);
                TM.Add(model);
            }
            return RedirectToAction("Testimonials", "Home");
        }


        [Authorize(Roles="auditor")]
        [HttpGet]
        public ActionResult Audit()
        {            
            return View(audit.GetAllAudits());
        }


        [Authorize(Roles = "surgeon")]
        public ActionResult Surgeon()
        {
            return View();
        }

        [Authorize(Roles = "surgeon")]
        public ActionResult Upload()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase file)
        {/*
           
            if (file != null && file.ContentLength > 0)
            {
               
               var fileName = System.IO.Path.GetFileName(file.FileName);
               Debug.WriteLine((string)fileName);
               var path = System.IO.Path.Combine(@"D:\COSC4351_Spring2015\TEAM2OIES\ZIPPED", fileName);
               var zippedPath = path;
               file.SaveAs(path);
               string newFileName = fileName;
               //Now unzip the file. Requires Ionic.Zip.dll!
               using (ZipFile zip = ZipFile.Read(path))
               {
                   //newFileName = newFileName.Split(".zip", StringSplitOptions.RemoveEmptyEntries);
                   path = System.IO.Path.Combine(@"D:\COSC4351_Spring2015\TEAM2OIES\UNZIPPED", newFileName);
                   zip.ExtractAll(path);
               }
               //delete the zipped file
               if (System.IO.File.Exists(zippedPath))
               {
                   System.IO.File.Delete(zippedPath);
               } */

               var dicom = DICOMObject.Read(@"D:\COSC4351_Spring2015\TEAM2OIES\UNZIPPED\Patient 18 anonym.zip\Patient 18 anonym\01182010\arterial anonym\DICOMDIR");
               var pixelspacing = dicom.FindFirst("00280030"); 
                /*
                //dicom stuff
                string path = @"D:\COSC4351_Spring2015\TEAM2OIES\UNZIPPED\" + @"Patient 18 anonym.zip\";
                string[] files = Directory.GetFiles(path, "DICOMDIR", SearchOption.AllDirectories);

                var dicom = DICOMObject.Read(@"D:\COSC4351_Spring2015\TEAM2OIES\UNZIPPED\Patient 18 anonym.zip\Patient 18 anonym\01182010\arterial anonym\DICOMDIR");

                PatientModel patient = new PatientModel();
                patient.surgeonID = LM.GetSurgeonID(User.Identity.Name);                
                
                var pixelspacing = dicom.FindFirst("00280030");
               //var patientdata = dicom.TryGetDataValue<string>("00020000", 9000);
               //List<string> availabledata = dicom.FindAll<string>();
               //Debug.WriteLine(availabledata.First());
               //var patientage = dicom.TryGetDataValue<int>(TagHelper.PATIENT_AGE, 0);
               //var actualAge = patientage.DData;
               //Debug.WriteLine(patientdata);
               //Debug.WriteLine(groupheader);
               Debug.WriteLine(pixelspacing);
               Debug.WriteLine("I hate everything"); */
                
            } 
            return RedirectToAction("Upload");
        }
    }
}
