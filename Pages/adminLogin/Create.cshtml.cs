using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using RoomBooking.Data;
using RoomBooking.DataFiles;

namespace RoomBooking.Pages.adminLogin
{
    public class CreateModel : PageModel
    {
        private readonly RoomBooking.Data.RoomBookingContext _context;

        public CreateModel(RoomBooking.Data.RoomBookingContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Login Login { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }
            if (Login.Name.Equals("Admin") && Login.Password.Equals("Admin"))
            {
                return RedirectToPage("./Dashboard");
            }
            else {
                return RedirectToPage("./wrong");
            }
           
            
        }
    }
}
