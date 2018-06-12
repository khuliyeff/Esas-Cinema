using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FirstWeb.Models;

namespace FirstWeb.Controllers
{
    public class HomeController : Controller
    {

        BekarEntities db = new BekarEntities();
        public ActionResult Index()
        {
            List<Result> results = db.Results.ToList();
            return View(results);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}