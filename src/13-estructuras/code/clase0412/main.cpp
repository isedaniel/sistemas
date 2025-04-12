#include <iostream>
#include <stack>

using namespace std;

struct Person
{
    string name;
    int age;

    Person(string s, int i)
    {
        this->name = s;
        this->age = i;
    }
};

int main()
{
    string auxName = "Juan";
    int auxAge = 10;

    stack<Person> Persons;
    Persons.emplace(auxName, auxAge);

    Person p("Pedro", 11);
    Persons.push(p);

    int size = Persons.size();
    for (int i = 0; i < size; i++)
    {
        cout << Persons.top().name << ' ' << Persons.top().age << '\n';
        Persons.pop();
    }

    return 0;
}
