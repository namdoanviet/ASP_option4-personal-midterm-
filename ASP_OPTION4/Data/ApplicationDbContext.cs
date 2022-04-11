using ASP_OPTION4.Models;
using Microsoft.EntityFrameworkCore;

namespace ASP_OPTION4.Data
{
    public class ApplicationDbContext: DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options): base(options)
        {

        }
        public DbSet<Category> Categories { get; set; }
    }
}
