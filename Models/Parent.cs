namespace Domain.Models;

public class Parent
{
    public int Id { get; set; }
    public string Parent_Code { get; set; }
    public string FullName { get; set; }
    public string Phone { get; set; }
    public DateTime Created_At { get; set; }
    public DateTime Updated_At { get; set; }
}
