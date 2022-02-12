using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Seyehat.Models.siniflar;
namespace Seyehat.Controllers
{
    public class AboutController : Controller
    {
        // GET: About
        Context a = new Context();
        public ActionResult Index()
        {
            var degerler = a.Hakkımızdas.ToList();
            return View(degerler);
        }
     public ActionResult Adminhak()
        {
            var deger = a.Hakkımızdas.ToList();
            return View(deger);
        }
    }
}