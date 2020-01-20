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

        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<EmployeeDetail> EmployeeDetails { get; set; }

        //public virtual DbSet<Customer> Customers { get; set; }
        //public virtual DbSet<CustomerDetail> CustomerDetails { get; set; }

        //public virtual DbSet<People> People { get; set; }
        //public virtual DbSet<PeopleAddress> PeopleAddress { get; set; }

        //public virtual DbSet<Student> Student { get; set; }
        //public virtual DbSet<StudentAddress> StudentAddress { get; set; }


        //protected override void OnModelCreating(DbModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<Customer>()
        //        .HasKey(p => p.CustomerId);

        //    modelBuilder.Entity<Customer>()
        //        .HasOptional(e => e.CustomerDetail)
        //        .WithRequired(e => e.Customer);

        //    modelBuilder.Entity<Student>()
        //       .HasKey(p => p.StudentId);

        //    //modelBuilder.Entity<StudentAddress>()
        //    //        .HasRequired<Student>(s => s.Student)
        //    //        .WithMany(s => s.StudentAddress)
        //    //        .HasForeignKey(s => s.StudentId);

        //    modelBuilder.Entity<Student>()
        //            .HasMany<StudentAddress>(s => s.StudentAddress)
        //            .WithRequired(s => s.Student)
        //            .HasForeignKey(s => s.StudentId);
        //}
    }
}
