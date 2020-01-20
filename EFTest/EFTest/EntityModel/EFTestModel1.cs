namespace EFTest.EntityModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EFTestModel : DbContext
    {
        public EFTestModel()
            : base("name=entities")
        {
        }

        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<EmployeeDetail> EmployeeDetail { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>()
                .HasMany(e => e.EmployeeDetail)
                .WithRequired(e => e.Employee)
                .WillCascadeOnDelete(false);
        }
    }
}
