class Course(int size, string name = "Curso")
{
    public string Name { get; set; } = name;
    private Student[] _students = new Student[size];
    private int _size = size;
    private int _count = 0;

    public void AddStudent(string name) 
    {
        if (_count < _size) 
        {
            _students[_count] = new() { Name = name };
            _count++;
        }
    }

    public void AddStudent(Student s) 
    {
        if (_count < _size) 
        {
            _students[_count] = s;
            _count++;
        }
    }
    public void PrintStudents()
    {
        Console.WriteLine($"En el curso \"{Name}\" hay {_count} estudiantes:");
        for (int i = 0; i < _count; i++)
        {
            Console.WriteLine($"{_students[i].Name}");
        }
    }
}