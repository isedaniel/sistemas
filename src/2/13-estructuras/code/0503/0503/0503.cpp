#include <iostream>

/*
1) Ingresar números hasta ingresar 0 y luego mostrar los números en orden inverso al ingresado. (Usando pilas)
Ejemplo: 100, 200, 300, 0 -> 300, 200, 100
*/

#include<stack>

static void ejercicio1()
{
	// creo stack de enteros
	std::stack<int> s;

	// ingreso números hasta el 0
	int n{};
	std::cin >> n;
	while (n != 0)
	{
		s.push(n);
		std::cin >> n;
	}

	// imprimo todo orden Last In First Out (LIFO)
	while (!s.empty())
	{
		std::cout << s.top() << ' ';
		s.pop();
	}
}

/*
2) Ingresar números hasta ingresar 0 y luego mostrar los números en el orden  ingresado. (Usando colas)
Ejemplo: 100, 200, 300, 0 -> 100, 200, 300
*/

#include<queue>

static void ejercicio2()
{
	std::queue<int> q{};

	// tomamos valores hasta ingresar 0
	int n{};
	std::cin >> n;
	while (n != 0)
	{
		q.push(n);
		std::cin >> n;
	}

	// imprimimos valores orden First In First Out (FIFO)
	while (!q.empty())
	{
		std::cout << q.front() << ' ';
		q.pop();
	}
}

/*
3) Ingresar números hasta ingresar 0 y luego mostrar los números pares en orden ascendente y luego mostrar los impares en orden descendente. (Usando Listas)
Ejemplo: 1, 3, 4, 2, 5, 7, 9, 8, 0 -> 2, 4, 8, 9, 7, 5, 3, 1
*/

#include <list>

static void ejercicio3()
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

/*
4) Ingresar números hasta ingresar 0 y mostrando cada vez todos los números ordenados. (Usando arboles)
Ejemplo: 10 -> 10; 4 -> 4, 10; 8 -> 4, 8, 10; 0
*/

#include <set>

static void ejercicio4()
{
	std::set<int> s;

	int n{ 1 };
	std::cin >> n;
	while (n != 0)
	{
		s.insert(n);
		for (int e : s)
		{
			std::cout << e << ' ';
		}
		std::cout << '\n';
		std::cin >> n;
	}
}

/*
5) Igual al 4 pero imprimiendo al revés
*/

static void ejercicio5()
{
	std::set<int> s;

	int n{ 1 };
	std::cin >> n;
	while (n != 0)
	{
		s.insert(n);
		for (auto it=s.rbegin(); it!=s.rend(); it++)
		{
			std::cout << *it << ' ';
		}
		std::cout << '\n';
		std::cin >> n;
	}
}

int main()
{
	ejercicio1();
}