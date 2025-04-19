#include <iostream>
#include <string>
#include <list>

using namespace std;

// función avanzar puntero
void plusPointer(auto& it, int n)
{
    for (int i=0;i<n;i++)
    {
        ++it;
    }
}

int main()
{
    // estructura lista
    list<int> l;

    // se pueden agregar elemento detras
    l.push_back(100);
    l.push_back(200);
    l.push_back(300);

    // y delante
    l.push_front(30);
    l.push_front(20);
    l.push_front(10);

    // pop tb se puede hacer detras y delante
    l.pop_back();
    l.pop_front();


    /*
    for (int i: l)
    {
        cout << i << '\n';
    }
    */

    // imprimimos
    for (auto it=l.begin(); it!=l.end();it++)
    {
        cout << *it << '\n';
    }

    cout << "-----" << '\n';

    // agregamos elemento en la tercera posición
    auto auxIt = l.begin();
    plusPointer(auxIt, 2);
    l.insert(auxIt, 40);

    for (auto it=l.begin(); it!=l.end();it++)
    {
        cout << *it << '\n';
    }

    return 0;
}
