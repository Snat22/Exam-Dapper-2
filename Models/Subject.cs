namespace Domain.Models;

public class Subject
{
    public int Id { get; set; }
    public string Title { get; set; }
    public int School_Id { get; set; }
    public int Stage { get; set; }
    public DateTime Created_At { get; set; }
    public DateTime Updated_At { get; set; }
}
