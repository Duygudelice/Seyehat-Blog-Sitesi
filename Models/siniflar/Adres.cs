using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Seyehat.Models.siniflar
{
    public class Adres
    {
        [Key]
        public int ID { get; set; }
        public string Baslik { get; set; }
        public string Yazi { get; set; }
        public string Adress { get; set; }
        public string Mail { get; set; }
        public string Telefon  { get; set; }
        public string Konum  { get; set; }
    }
}