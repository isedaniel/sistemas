#include <iostream>
#include <list>


/*
3) Ingresar números hasta ingresar 0 y luego mostrar los números pares en orden ascendente y luego mostrar los impares en orden descendente. (Usando Listas)
Ejemplo: 1, 3, 4, 2, 5, 7, 9, 8, 0 -> 2, 4, 8, 9, 7, 5, 3, 1
*/

int main()
{
	std::list<int> even, odd;

	// ingresamos numeros, van pares a lista even, impares a lista odd
	int n{ 1 };
	std::cin >> n;
	while (n != 0)
	{
		if (n % 2 == 0)
		{
			even.push_back(n);
		}
		else
		{
			odd.push_back(n);
		}
		std::cin >> n;
	}

	// ordenamos listas, odd de mayor a menor
	even.sort();
	odd.sort();
	odd.reverse();

	// imprimimos
	for (int i : even)
	{
		std::cout << i << ' ';
	}

	for (int i : odd)
	{
		std::cout << i << ' ';
	}
}