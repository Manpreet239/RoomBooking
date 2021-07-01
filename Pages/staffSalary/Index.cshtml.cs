using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using RoomBooking.Data;
using RoomBooking.DataFiles;

namespace RoomBooking.Pages.staffSalary
{
    public class IndexModel : PageModel
    {
        private readonly RoomBooking.Data.RoomBookingContext _context;

        public IndexModel(RoomBooking.Data.RoomBookingContext context)
        {
            _context = context;
        }

        public IList<Salary> Salary { get;set; }

        public async Task OnGetAsync()
        {
            Salary = await _context.Salary.ToListAsync();
        }
    }
}
