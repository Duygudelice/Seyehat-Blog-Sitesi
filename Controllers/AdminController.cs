using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Seyehat.Models.siniflar;

namespace Seyehat.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();
        [Authorize]
        public ActionResult Index()
        {
            var degerler = c.Blogs.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniBlog()
        {
            return View();

        }
        [HttpPost]
        public ActionResult YeniBlog(Blog a)
        {
            c.Blogs.Add(a);
            c.SaveChanges();

            return RedirectToAction("Index");

        }
        public ActionResult BlogSil(int id)
        {
            var b = c.Blogs.Find(id);
            c.Blogs.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult BlogGetir(int id)
        {
            var b = c.Blogs.Find(id);
            return View("BlogGetir",b);

        }
        public ActionResult BlogGuncelle(Blog b)
        { 
            var bgl = c.Blogs.Find(b.ID);
            bgl.Aciklama = b.Aciklama;
            bgl.Baslik = b.Baslik;
            bgl.BlogResim = b.BlogResim;
            bgl.Tarih = b.Tarih;
            c.SaveChanges();
       
            return RedirectToAction("Index");

        }
        public ActionResult İletişim()
        {
            var degerler = c.İletisims.ToList();
                return View(degerler);
        }
        public ActionResult MesajDetay(int id)
        {
            var deger = c.İletisims.Find(id);
            return View("MesajDetay", deger);
        }
        public ActionResult Hakkımızda()
        {
            var deger = c.Hakkımızdas.ToList();
            return View(deger);

        }
        public ActionResult Hakkımızdagetir(int id)
        {
            var deger = c.Hakkımızdas.Find(id);
            return View("Hakkımızdagetir", deger);
        }
        public ActionResult HakkımızdaGüncelle(Hakkımızda a)
        {
            var deger = c.Hakkımızdas.Find(a.ID);
            deger.Fotourl = a.Fotourl;
            deger.yazi = a.yazi;
            c.SaveChanges();
            return RedirectToAction("Hakkımızdagetir");
        }
    }
}
