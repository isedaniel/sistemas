
#include <iostream>
#include <stack>

/*
1) Ingresar números hasta ingresar 0 y luego mostrar los números en orden inverso al ingresado. (Usando pilas)
Ejemplo: 100, 200, 300, 0 -> 300, 200, 100
*/

int main()
{
    // creo la pila
    std::stack<int> s;

    // itero hasta que ingrese el 0
    int n;
    std::cin >> n;
    while (n != 0)
    {
        s.push(n);
        std::cin >> n;
    }

    // imprimo y saco los elementos
    while (!s.empty())
    {
        std::cout << s.top() << '\n';
        s.pop();
    }
}
