using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Seyehat.Models.siniflar
{
    public class Context:DbContext
    {
     public  DbSet <Admin> Admins { get; set; }
     public DbSet <Adres> Adress { get; set; }
       public DbSet<Blog> Blogs { get; set; }
        public DbSet<Hakkımızda> Hakkımızdas { get; set; }
       public DbSet<İletisim> İletisims { get; set; }
       public DbSet<Yorumlar> Yorumlars { get; set; }
    }
}