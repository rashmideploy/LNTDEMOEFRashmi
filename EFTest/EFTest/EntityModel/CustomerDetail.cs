using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFTest.EntityModel
{
[Table("CustomerDetail")]
public partial class CustomerDetail
{
    [Key]
    [ForeignKey("Customer")]
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int CustomerId { get; set; }

    [StringLength(255)]
    public string EmailAddress { get; set; }

    [StringLength(50)]
    public string PhoneNumber { get; set; }

    public virtual Customer Customer { get; set; }
}
}
