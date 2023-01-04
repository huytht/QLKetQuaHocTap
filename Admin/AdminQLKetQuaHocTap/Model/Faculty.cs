namespace AdminQLKetQuaHocTap
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Faculty")]
    public partial class Faculty
    {
        public Faculty()
        {
            Students = new HashSet<Student>();
            Subjects = new HashSet<Subject>();
            Teachers = new HashSet<Teacher>();
        }

        [StringLength(10)]
        public string id { get; set; }

        [Required]
        [StringLength(100)]
        public string name { get; set; }

        [Required]
        [StringLength(100)]
        public string address { get; set; }

        public bool status { get; set; }

        public virtual ICollection<Student> Students { get; set; }

        public virtual ICollection<Subject> Subjects { get; set; }

        public virtual ICollection<Teacher> Teachers { get; set; }
    }
}
