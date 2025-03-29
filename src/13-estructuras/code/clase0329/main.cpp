#include <iostream>
// permite manejar pilas
#include <stack>

// pila es estructura dinamica
// no necesito saber cuantos elementos voy a tener

int main()
{
    // creo un entero
    int n;

     // creo una pila<tipo>
    std::stack<int> p;

    // agrego un elemento a la pila
    p.push(n);

    // agrego varios elementos
    p.push(10);
    p.push(20);
    p.push(30);

    // itero para imprimir
    while (!p.empty()) {
            // imprimo elemento al tope
            std::cout << p.top() << '\n';
            // saco elemento del tope
            p.pop();
    }

    // ingresamos manual
    std::cin >> n;
    while (n!=0) {
        p.push(n);
        std::cin>>n;
    }

    // itero para imprimir todo de nuevo
    while (!p.empty()) {
            // imprimo elemento al tope
            std::cout << p.top() << '\n';
            // saco elemento del tope
            p.pop();
    }

    return 0;
}
