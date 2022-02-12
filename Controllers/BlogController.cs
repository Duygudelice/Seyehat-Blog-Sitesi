using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Seyehat.Models.siniflar;
namespace Seyehat.Controllers
{
    public class BlogController : Controller
    {
        // GET: Blog
        Context c = new Context();

        BlogYorum r = new BlogYorum();
        public ActionResult Index()
        {
           r.Deger1 = c.Blogs.ToList();
            r.Deger3 = c.Blogs.OrderByDescending(x=>x.ID).Take(3);
            r.Dger2 = c.Yorumlars.OrderByDescending(x => x.ID).Take(3);
            return View(r);
        }
       
        public ActionResult BlogDetay(int id)

        {
            r.Deger3 = c.Blogs.OrderByDescending(x => x.ID).Take(3);
            r.Deger4 = c.Yorumlars.OrderByDescending(x => x.ID).Take(3);


            r.Deger1=c.Blogs.Where(x => x.ID ==id).ToList();
        
            r.Dger2 = c.Yorumlars.Where(x => x.Blogid == id).ToList();
            return View(r);

        }
        [HttpGet]
        public PartialViewResult YorumYap(int id)
        {
            ViewBag.deger = id;
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult YorumYap(Yorumlar a)

        {
            c.Yorumlars.Add(a);
            c.SaveChanges();
            return PartialView();

        }
    }
}