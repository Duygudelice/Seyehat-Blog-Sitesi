﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Seyehat.Models.siniflar
{
    public class Anasayfa
    {
         [Key]
        public int ID { get; set; }
        public string Baslik { get; set; }
        public string yazi { get; set; }
    }
}