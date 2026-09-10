
#include <iostream>

/*
	Primera parte
*/
static void parteOne()
{
	int a = 10;
	int* b = (int*)malloc(sizeof(int));
	*b = 20;

	/*
		A y B apuntan a dos cosas distintas
	*/
	std::cout << "&a: " << &a << ' ' << "a: " << a << '\n';
	std::cout << "b: " << b << ' ' << "*b: " << *b << '\n';

	/*
		Libero B
	*/
	free(b);

	/*
		B apunta a A
	*/
	b = &a;
	std::cout << "b: " << b << ' ' << "*b: " << *b << '\n';

	/*
		B apunta a un espacio nuevo
	*/
	b = (int*)malloc(sizeof(int));
	std::cout << "b: " << b << ' ' << "*b: " << *b << '\n';
	free(b);
	std::cout << "b: " << b << ' ' << "*b: " << *b << '\n';
	b = (int*)malloc(sizeof(int));
	std::cout << "b: " << b << ' ' << "*b: " << *b << '\n';
	free(b);
}

static void parteTwo()
{
	/*
		Vector de enteros rústico
	*/
	int* v = (int*)malloc(sizeof(int) * 10);

	/*
		asigno 100 * index a cada valor
	*/
	for (int i = 0; i < 10; i++)
	{
		*(v + i) = i * 100;
	}

	/*
		leo
	*/
	for (int i = 0; i < 10; i++)
	{
		std::cout << *(v + i) << '\n';
	}
}

int main()
{
	int a = 10;
	int* b = &a;

	std::cout << "b: " << b << " *b: " << *b << '\n';

	*b = 20;
	std::cout << "b: " << b << " *b: " << *b << '\n';
	free(b);
	std::cout << "b: " << b << " *b: " << *b << '\n';
}
