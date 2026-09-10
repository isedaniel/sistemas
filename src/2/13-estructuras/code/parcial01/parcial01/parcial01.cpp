
#include <iostream>

/*
1) Ingresar números hasta ingresar 0 y luego mostrar los números en orden inverso al ingresado. (Usando pilas)
Ejemplo: 100, 200, 300, 0 -> 300, 200, 100
*/

#include <stack>

void actividad1()
{
    std::stack<int> s;

    int num = 0;
    std::cin >> num;
    while (num != 0)
    {
        s.push(num);
        std::cin >> num;
    }

    while (!s.empty())
    {
        std::cout << s.top() << '\n';
        s.pop();
    }
}

/*
2) Ingresar números hasta ingresar 0 y luego mostrar los números en el orden  ingresado. (Usando colas)
Ejemplo: 100, 200, 300, 0 -> 100, 200, 300
*/

#include <queue>

void actividad2()
{
    std::queue<int> q;

    int num = 0;
    std::cin >> num;
    while (num != 0)
    {
        q.push(num);
        std::cin >> num;
    }

    while (!q.empty())
    {
        std::cout << q.front() << '\n';
        q.pop();
    }
}

/*
3) Ingresar números hasta ingresar 0 y luego mostrar los números pares en orden ascendente y luego mostrar los impares en orden descendente. (Usando Listas)
Ejemplo: 1, 3, 4, 2, 5, 7, 9, 8, 0 -> 2, 4, 8, 9, 7, 5, 3, 1
*/

#include <list>

void actividad3()
{
    std::list<int> even, odd;

    int num = 0;
    std::cin >> num;
    while (num != 0)
    {
        if (num % 2 == 0) even.push_back(num);
        else odd.push_back(num);

        std::cin >> num;
    }

    even.sort();
    odd.sort();
    odd.reverse();

    for (int e : even) std::cout << e << ' ';
    for (int e : odd) std::cout << e << ' ';
}

/*
4) Ingresar números hasta ingresar 0 y mostrando cada vez todos los números ordenados. (Usando arboles)
Ejemplo: 10 -> 10 ; 4 -> 4, 10 ; 8 -> 4, 8, 10 ; 0
*/

#include <set>

void actividad4()
{
    std::set<int> s;

    int num = 0;
    std::cin >> num;
    while (num != 0)
    {
        s.insert(num);

        for (int e : s) std::cout << e << ' ';
        std::cout << '\n';

        std::cin >> num;
    }
}

/*
5) Ingresar 5 hombres y luego 5 mujeres, incluyendo nombre y edad, luego mostrar parejas por edad de menor a mayor.
Ejemplo: Juan, 50, José, 25, Martín, 30, Pedro, 45, Juan, 35, María, 18, Elena, 48, Ana, 28, Sofia, 38, Paula, 24
 -> José, 25, María, 18, Martín, 30, Paula, 24, Juan, 35, Ana, 28, Pedro, 45, Sofia, 38, Juan, 50, Elena, 48
*/

struct Person
{
    int age;
    std::string name;
};

// especifico función para ordenar personas, como señala la página de referencia https://en.cppreference.com/w/cpp/container/list/sort
bool youngerToOlder(const Person& a, const Person& b)
{
    return a.age < b.age;
}

void actividad5()
{
    std::list<Person> men;

    Person person;
    for (int i=0; i<5; i++)
    {
        std::cin >> person.name;
        std::cin >> person.age;
        men.push_back(person);
    }

    std::list<Person> women;
    for (int i = 0; i < 5; i++)
    {
        std::cin >> person.name;
        std::cin >> person.age;
        women.push_back(person);
    }

    men.sort(youngerToOlder);
    women.sort(youngerToOlder);

    auto men_it = men.begin();
    auto women_it = women.begin();
    while (men_it != men.end() && women_it != women.end())
    {
        std::cout << men_it->name << ' ' << men_it->age << '\n';
        std::cout << women_it->name << ' ' << women_it->age << '\n';
        men_it++;
        women_it++;
    }
}

int main()
{
    actividad5();
}

