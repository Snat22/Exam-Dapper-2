namespace Domain.Models;

public class Classes
{
    public int Id { get; set; }
    public string CalssName { get; set; }
    public int Subject_Id { get; set; }
    public int Classroom_Id { get; set; }
    public string Section { get; set; }
    public DateTime Created_At { get; set; }
    public DateTime Updated_At { get; set; }
}
