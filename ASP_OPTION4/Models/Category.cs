using System.ComponentModel.DataAnnotations;
namespace ASP_OPTION4.Models
{
    public class Category
    {
        [Key]
        public int ID { get; set; }

        [Required]
        public string Name { get; set; }
        [Display(Name="Display Order")]
        [Range(1,100,ErrorMessage="Display Order must be between 1 and 100 onlly!!")]
        public int DisplayOrder { get; set; }

        public DateTime CreatedDateTime { get; set; } = DateTime.Now;
        
    }
}
