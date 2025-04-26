#include <iostream>
#include <set>
#include <list>

using namespace std;

/*
Enunciado: Ingresar números hasta ingresar 0 y luego mostrarlos
en orden descendente (usando listas y luego árboles).
Ejemplo: 20, 30, 5, 10, 0 -> 30, 20, 10, 5
*/
int main()
{
    list<int> l;

    int n = 0;
    cin >> n;
    while (n!=0)
    {
        l.push_back(n);
        cin >> n;
    }

    l.sort([](const int& a, const int& b) { return a>b;});

    for (int e: l)
    {
        cout << e << ", ";
    }
    cout << '\n';

    set<int> s;

    cin >> n;
    while (n!=0)
    {
        s.insert(n);
        cin >> n;
    }

    for (auto it=s.rbegin(); it != s.rend(); ++it)
    {
        cout << *it << ", ";
    }
    cout << '\n';
    return 0;
}
