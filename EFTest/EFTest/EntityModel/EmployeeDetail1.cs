namespace EFTest.EntityModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EmployeeDetail")]
    public partial class EmployeeDetail
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int EmployeeId { get; set; }

        [StringLength(10)]
        public string Gender { get; set; }

        [StringLength(255)]
        public string EmailAddress { get; set; }

        [StringLength(50)]
        public string PhoneNumber { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
