using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Seyehat.Models.siniflar;
namespace Seyehat.Controllers
{
    public class İletisimController : Controller
    {
        // GET: İletisim
        Context c = new Context();
        public ActionResult Index(İletisim a)
        {
            return View();
        }
        public ActionResult MesajGonder(İletisim a)
        {
        c.İletisims.Add(a);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}