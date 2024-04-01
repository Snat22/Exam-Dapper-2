namespace Domain.Models;

public class Student
{
    public int Id { get; set; }
    public string StudentCode { get; set; }
    public string FullName { get; set; }
    public string Gender { get; set; }
    public DateTime BirthDate { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
    public int School_Id { get; set; }
    public int Stage_In { get; set; }
    public string Section { get; set; }
    public string IsActive { get; set; }
    public DateTime JoinDate { get; set; }
    public DateTime Created_At { get; set; }
    public  DateTime Updated_at { get; set; }
}
