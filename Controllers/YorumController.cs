using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Seyehat.Models.siniflar;
namespace Seyehat.Controllers
{
    public class YorumController : Controller
    {
        // GET: Yorum
        Context c = new Context();
        public ActionResult Index()

        {
            var degerler=c.Yorumlars.ToList();
            return View(degerler);
        }
        public ActionResult YorumSil(int id)
        {
           var b= c.Yorumlars.Find(id);
            c.Yorumlars.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult YorumGetir(int id)

        {
            var g = c.Yorumlars.Find(id);
            return View("YorumGetir", g);
        }
        public ActionResult YorumGüncelle(Yorumlar a)
        {
            var f = c.Yorumlars.Find(a.ID);
                f.KullaniciAdi = a.KullaniciAdi;
            f.Mail = a.Mail;
            f.Yorum = a.Yorum;
            c.SaveChanges();
                return RedirectToAction("Index");
        }
    }
}