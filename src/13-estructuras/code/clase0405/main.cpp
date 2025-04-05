#include <iostream>
#include <string>
#include <stack>

using namespace std;

// creamos estructura
struct Person
{
    // declaramos sus campos
    string name;
    int age;
};

int main()
{
    // declaramos una instancia de la estructura
    Person p;
    // asignamos valores
    p.name = "Adriana";
    p.age = 22;

    // imprimimos
    cout << p.name << '\n' << p.age << '\n';

    // creamos pila de personas
    stack<Person> persons;

    // agregamos la persona creada
    persons.push(p);

    cout << persons.top().name << '\n';

    // agregamos personas hasta ingresar 0
    cin >> p.name;
    while (p.name != "0")
    {
        cin >> p.age;
        persons.push(p);
        cin >> p.name;
    }

    // mostramos personas apiladas
    while (!persons.empty())
    {
        cout << persons.top().name << '\n';
        cout << lastAge << '\n';
        persons.pop();
    }

    return 0;
}
