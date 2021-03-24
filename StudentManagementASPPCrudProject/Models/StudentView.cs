using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentManagementASPPCrudProject.Models
{
    public class StudentView
    {
        public int Id { get; set; }
        public string StudName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime DateOfBirth { get; set; }
        public int CourseId { get; set; }
        public string ImageName { get; set; }
        public string ImageUrl { get; set; }
    }
}