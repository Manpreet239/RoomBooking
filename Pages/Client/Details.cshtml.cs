using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using RoomBooking.Data;
using RoomBooking.DataFiles;

namespace RoomBooking.Pages.Client
{
    public class DetailsModel : PageModel
    {
        private readonly RoomBooking.Data.RoomBookingContext _context;

        public DetailsModel(RoomBooking.Data.RoomBookingContext context)
        {
            _context = context;
        }

        public Customer Customer { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Customer = await _context.Customer.FirstOrDefaultAsync(m => m.id == id);

            if (Customer == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
