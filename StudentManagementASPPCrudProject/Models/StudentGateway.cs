using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentManagementASPPCrudProject.Models
{
    public class StudentGateway
    {
        public static List<Student> GetStudents()
        {
            List<Student> list = new List<Student>();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                //cmd.CommandText = "SELECT Student_tbl.Id, StudName, Email, Phone, DateOfBirth, courseName, ImageName, ImageUrl FROM Student_tbl inner join Course_tbl on Course_tbl.Id=Student_tbl.CourseId";
                cmd.CommandText = "SELECT * FROM Student_tbl";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Student obj = new Student();
                    obj.Id = Convert.ToInt32(rdr["Id"].ToString());
                    obj.StudName = rdr["StudName"].ToString();
                    obj.Email = rdr["Email"].ToString();
                    obj.Phone = rdr["Phone"].ToString();
                    obj.DateOfBirth = Convert.ToDateTime(rdr["DateOfBirth"].ToString());
                    obj.CourseId = Convert.ToInt32(rdr["CourseId"].ToString());
                    //obj.courseName = rdr["coureName"].ToString();                    
                    obj.ImageName = rdr["ImageName"].ToString();
                    obj.ImageUrl = rdr["ImageUrl"].ToString();
                    list.Add(obj);
                }
            }
            return list;
        }
        public static void saveStudent(string StudName, string Email, string Phone, DateTime DateOfBirth, int CourseId, string ImageName, string ImageUrl)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Student_tbl(StudName, Email, Phone, DateOfBirth, CourseId, ImageName, ImageUrl) VALUES(@StudName, @Email, @Phone, @DateOfBirth, @CourseId, @ImageName, @ImageUrl)";
                cmd.Parameters.AddWithValue("@StudName", StudName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("DateOfBirth", DateOfBirth);
                cmd.Parameters.AddWithValue("CourseId", CourseId);
                cmd.Parameters.AddWithValue("@ImageName", ImageName);
                cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public static string GetImageName(int StudId)
        {
            string imgname = "";
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ImageName FROM Student_tbl Where Id=" + StudId;
                con.Open();
                imgname = cmd.ExecuteScalar().ToString();
            }
            return imgname;
        }
        public static void UpdateStudent(int Id, string StudName, string Email, string Phone, DateTime DateOfBirth, int CourseId, string ImageName, string ImageUrl)
        {          
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Student_tbl SET StudName=@StudName, Email=@Email, Phone=@Phone, DateOfBirth=@DateOfBirth, CourseId=@CourseId Where Id=" + Id;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@StudName", StudName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
                cmd.Parameters.AddWithValue("@CourseId", CourseId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void DeleteStudent(int Id)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM Student_tbl Where Id=" + Id;
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void UpdateImageById(int id, string imageName, string imageUrl)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Student_tbl SET ImageName=@ImageName, ImageUrl=@ImageUrl Where Id=" + id;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ImageName", imageName);
                cmd.Parameters.AddWithValue("@ImageUrl", imageUrl);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

    }
}