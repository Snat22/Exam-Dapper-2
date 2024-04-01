namespace Domain.Models;

public class Teacher
{
    public int Id { get; set; }
    public string Teacher_Code { get; set; }
    public string FullName { get; set; }
    public string Gender { get; set; }
    public DateTime BirthDate { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
    public string IsActive { get; set; }
    public DateTime Join_Date { get; set; }
    public int Working_Day { get; set; }
    public DateTime Created_At { get; set; }
    public DateTime Updated_At { get; set; }

}
