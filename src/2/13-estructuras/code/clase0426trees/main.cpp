#include <iostream>
#include <set>

void printSet(const std::set<int>& s)
{
    std::cout << '{';
    for (int e:s) {
        std::cout << e << ", ";
    }
    std::cout << "}\n";
}

int main()
{
    std::set<int> s {10, 30, 5, 120, 130};

    // los valores siempre estan ordenados
    std::cout << "\nValores siempre ordenados:\n";
    printSet(s);

    // no incorpora valores duplicados
    std::cout << "\nAgregamos 30 de nuevo:\n";
    s.insert(30);
    printSet(s);

    // el set se puede recorrer al reves
    std::cout << "\nRecorremos al revés:\n{";
    for (auto it=s.rbegin(); it != s.rend(); it++)
    {
        std:: cout << *it << ", ";
    }
    std::cout << "}\n";

    // Agregamos el 100
    std::cout << "\nAgregamos 100:\n";
    s.insert(100);
    printSet(s);

    // buscamos elemento
    std::cout << "\nBuscamos el 100:\n";
    if (s.find(100) != s.end())
    {
        std::cout << "100 encontrado\n";
    }
    else
    {
        std::cout << "No hay 100\n";
    }

    // eliminamos el 100
    std::cout << "\nEliminamos 100:\n";

    auto it = s.find(100);
    if (it != s.end())
    {
        s.erase(100);
    }
    printSet(s);

    it = s.find(6);
    std::cout << (s.find(5) != s.find(6)) << '\n';

    return 0;
}
