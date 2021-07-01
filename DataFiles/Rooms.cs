using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RoomBooking.DataFiles
{
    public class Rooms
    {

        public int id { get; set; }

        [Display(Name = "Room No")]
        public string RoomNo { get; set; }

        [Display(Name = "Room Type")]
        public string RoomType { get; set; }

        [Display(Name = "Fair")]
        public string Fair { get; set; }
    }
}
