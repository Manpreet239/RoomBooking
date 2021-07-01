using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RoomBooking.DataFiles;

namespace RoomBooking.Data
{
    public class RoomBookingContext : DbContext
    {
        public RoomBookingContext (DbContextOptions<RoomBookingContext> options)
            : base(options)
        {
        }

        public DbSet<RoomBooking.DataFiles.Customer> Customer { get; set; }

        public DbSet<RoomBooking.DataFiles.Payment> Payment { get; set; }

        public DbSet<RoomBooking.DataFiles.Rooms> Rooms { get; set; }

        public DbSet<RoomBooking.DataFiles.Staff> Staff { get; set; }

        public DbSet<RoomBooking.DataFiles.Salary> Salary { get; set; }

        public DbSet<RoomBooking.DataFiles.Login> Login { get; set; }


    }
}
