//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FirstWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Result
    {
        public int Id { get; set; }
        public int StudentId { get; set; }
        public int ExamId { get; set; }
        public System.DateTime Date { get; set; }
        public decimal ExamResult { get; set; }
    
        public virtual Exam Exam { get; set; }
        public virtual Student Student { get; set; }
    }
}
