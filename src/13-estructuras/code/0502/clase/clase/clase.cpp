#include <iostream>
#include <list>

static void printList(const std::list<int>& l)
{
	std::cout << '{' << ' ';

	// size and iteration count for comma printing
	size_t size{ l.size() };
	int i{ 1 };

	for (int e : l)
	{
		std::cout << e;

		// print commas until last element
		i++;
		if (i < size)
		{
			std::cout << ',' << ' ';
		}
	}
	std::cout << ' ' << '}' << '\n';
}

int main()
{
	std::cout << "Hello, world!\n";
	std::list<int> lA{ 1,2,3 };

	lA.push_front(12);
	printList(lA);
}