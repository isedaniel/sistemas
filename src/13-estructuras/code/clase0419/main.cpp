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

void printList(auto& l)
{
    for (auto e:l)
    {
        cout << e << '\n';
    }
}

void printLine()
{
    cout << "-----" << '\n';
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

    // imprimimos
    printList(l);
    printLine();

    // agregamos elemento en la tercera posición
    auto auxIt{l.begin()};
    plusPointer(auxIt, 2);
    l.insert(auxIt, 40);

    printList(l);
    printLine();

    // sacar por puntero
    auto removeIt{l.begin()};
    plusPointer(removeIt, 3);
    l.erase(removeIt);
    printList(l);
    printLine();

    // agregamos un 40
    l.push_back(40);
    printList(l);
    printLine();

    // sacamos todos los 40 con remove
    l.remove(40);
    printList(l);
    printLine();

    return 0;
}
