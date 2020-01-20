using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFTest.EntityModel
{
    [Table("Student")]
    public partial class Student
    {
        public Student()
        {
            this.StudentAddress = new HashSet<StudentAddress>();
        }
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int StudentId { get; set; }

        [Required]
        [StringLength(50)]
        public string FirstName { get; set; }

        [Required]
        [StringLength(50)]
        public string LastName { get; set; }

        public virtual ICollection<StudentAddress> StudentAddress { get; set; }
    }
}
