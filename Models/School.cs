namespace Domain.Models;

public class School
{
    public int Id { get; set; }
    public string Title { get; set; }
    public int Level_Count { get; set; }
    public int Is_Active { get; set; }
    public DateTime Created_At { get; set; }
    public DateTime Updated_At { get; set; }
}
