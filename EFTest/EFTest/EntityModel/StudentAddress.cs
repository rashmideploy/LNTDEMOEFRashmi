using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFTest.EntityModel
{
    [Table("StudentAddress")]
    public partial class StudentAddress
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int StudentAddressId { get; set; }

        public int StudentId { get; set; }

        [Required]
        [StringLength(100)]
        public string AddressLine1 { get; set; }

        [Required]
        [StringLength(100)]
        public string AddressLine2 { get; set; }

        [StringLength(50)]
        public string City { get; set; }

        [StringLength(50)]
        public string State { get; set; }

        [StringLength(50)]
        public string Country { get; set; }

        public virtual Student Student { get; set; }
    }
}
