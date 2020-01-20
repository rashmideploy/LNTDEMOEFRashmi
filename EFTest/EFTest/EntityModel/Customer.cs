using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFTest.EntityModel
{
[Table("Customer")]
public partial class Customer
{
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int CustomerId { get; set; }

    [Required]
    [StringLength(50)]
    public string FirstName { get; set; }

    [Required]
    [StringLength(50)]
    public string LastName { get; set; }

    [StringLength(50)]
    public string MiddleName { get; set; }

    public virtual CustomerDetail CustomerDetail { get; set; }
}
}
