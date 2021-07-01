using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RoomBooking.DataFiles
{
    public class Salary
    {
        public int id { get; set; }

        [Display(Name = "Name")]
        public string Name { get; set; }

       

        [Display(Name = "Contact")]
        public string Contact { get; set; }

        [Display(Name = "Payment")]
        public int Payment { get; set; }

        [Display(Name = "Date")]
        public DateTime PaymentDate { get; set; }

        public Staff staff { get; set; }

    }
}
