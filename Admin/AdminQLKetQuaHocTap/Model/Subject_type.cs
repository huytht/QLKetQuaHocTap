namespace AdminQLKetQuaHocTap
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Subject_type
    {
        public Subject_type()
        {
            Subjects = new HashSet<Subject>();
        }

        [StringLength(10)]
        public string id { get; set; }

        [StringLength(100)]
        public string name { get; set; }

        public bool? status { get; set; }

        public virtual ICollection<Subject> Subjects { get; set; }
    }
}
