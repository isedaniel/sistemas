#include <iostream>
#include <list>

using namespace std;

void printList(const list<int>& l, const char name)
{
    cout << "Lista " << name << ':' << ' ';
    for (int e : l)
    {
        cout << e << " ";
    }
    cout << '\n';
}

int main()
{
    // definimos listas
    list<int> lA {1,3,5};
    list<int> lB {2,4,6};

    printList(lA, 'A');
    printList(lB, 'B');

    // intercambiamos punteros de lA y lB
    lA.swap(lB);

    cout << "\nSwapeamos: \n";
    printList(lA, 'A');
    printList(lB, 'B');

    // agregamos elemento
    lA.push_back(5);

    // ordenamos
    lA.sort();

    cout << "\nAgregamos elemento y ordenamos: \n";
    printList(lA, 'A');
    printList(lB, 'B');

    // merge unifica de menor a mayor
    // si no están ordenadas no quedan ordenadas
    lA.merge(lB);

    cout << "\nMerge (como las listas estan ordenadas sale bien):\n";
    printList(lA, 'A');

    // podemos mergear literales
    lA.merge({0,7,8});

    cout << "\nMerge de un literal:\n";
    printList(lA, 'A');

    return 0;
}
