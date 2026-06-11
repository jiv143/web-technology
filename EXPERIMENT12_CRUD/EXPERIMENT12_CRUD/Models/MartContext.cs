using System.Collections.Generic;
using System.Data.Entity;

namespace EXPERIMENT12_CRUD.Models
{
    public class MartContext : DbContext
    {
        public MartContext() : base("MartContext") { }
        public DbSet<Product> Products { get; set; }
    }
}