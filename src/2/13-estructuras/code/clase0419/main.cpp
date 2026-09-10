#include <iostream>
#include <string>
#include <list>

using namespace std;

int main()
{
    // ingresar nros hasta ingresar 0
    // luego insertar 10 antes que los numeros pares
    // ejemplo: 15, 27, 12, 19, 20,0 -> 15, 27, 10, 12, 19, 10, 20

    list<int> l;
    int in;
    cin >> in;

    while (in != 0)
    {
        l.push_back(in);
        cin >> in;
    }

    for (auto it=l.begin(); it!=l.end(); ++it)
    {
        if (*it % 2 == 0)
        {
            l.insert(it, 99);
        }
    }

    for (auto it=l.begin(); it!=l.end(); ++it)
    {
        cout << *it << '\n';
    }

    return 0;
}
