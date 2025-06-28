#include <iostream>

struct Node {
	int value;
	Node* next;
	Node* prev;
};

Node* create_node(int value)
{
	Node* n = (Node*)malloc(sizeof Node);
	
	if (n == nullptr) {
		exit(EXIT_FAILURE);
	}

	n->value = value;
	n->next = nullptr;
	n->prev = nullptr;
	return n;
}

struct MyStack {
	Node* top;
};

MyStack* create_stack()
{
	MyStack* s = (MyStack*)malloc(sizeof MyStack);

	if (s == nullptr) {
		exit(EXIT_FAILURE);
	}

	s->top = nullptr;
}

/*
Agregar elemento a pila
*/
void add_element(MyStack* s, int value)
{
	Node* n = create_node(value);

	// si es el único, agregamos el primer nodo
	if (s->top == nullptr) {
		s->top = n;
	}
	// si ya habia un nodo, que el nuevo apunte a él y sea el nuevo top
	else {
		n->next = s->top;
		s->top = n;
	}
}

/*
Imprimimos elementos de pila
*/
void print_elements(MyStack* s)
{
	Node* aux = s->top;
	while (aux != nullptr) {
		std::cout << aux->value << ' ';
		aux = aux->next;
	}
	std::cout << '\n';
}

struct MyQueue {
	Node* first;
	Node* last;
};

MyQueue* create_queue()
{
	MyQueue* q = (MyQueue*)malloc(sizeof MyQueue);

	if (q == nullptr) {
		exit(EXIT_FAILURE);
	}

	q->first = nullptr;
	q->last = nullptr;
}

/*
Agrego elemento a cola
*/
void add_element(MyQueue* q, int value)
{
	Node* n = create_node(value);

	// caso 1: cola no tiene elementos -> elemento nuevo es primero y ultimo
	if (q->first == nullptr) {
		q->first = n;
		q->last = n;
	}
	// caso 2: tiene 1 hasta n elementos -> elemento nuevo es el ultimo
	else {
		q->last->next = n;
		n->prev = q->last;
		q->last = n;
	}
}

/*
Imprimo elementos de la cola
*/
void print_elements(MyQueue* q)
{
	Node* aux = q->first;
	while (aux != nullptr) {
		std::cout << aux->value << " ";
		aux = aux->next;
	}
	std::cout << '\n';
}


struct MyList {
	Node* first;
	Node* last;
};

MyList* create_list()
{
	MyList* l = (MyList*)malloc(sizeof MyList);

	if (l == nullptr) {
		exit(EXIT_FAILURE);
	}

	l->first = nullptr;
	l->last = nullptr;
}

/*
Inserto elemento adelante de la lista
*/
void push_front(MyList* l, int value)
{
	Node* n = create_node(value);

	// caso 1: no hay elementos, por lo tanto es primero y ultimo
	if (l->first == nullptr) {
		l->first = n;
		l->last = n;
	}
	// caso 2: hay elementos, empujamos el nuevo adelante
	else {
		n->next = l->first;
		l->first->prev = n;
		l->first = n;
	}
}

/*
Inserto elemento atras de la lista
*/
void push_back(MyList* l, int value)
{
	Node* n = create_node(value);

	// caso 1: no hay elementos, es primero y último
	if (l->last == nullptr) {
		l->first = n;
		l->last = n;
	}
	// caso 2: hay elementos, lo insertamos al final
	else {
		l->last->next = n;
		n->prev = l->last;
		l->last = n;
	}
}

void ordered_insert(MyList* l, int value)
{
	// caso 1: no tengo nodos -> el nuevo es primero y ultimo
	if (l->first == nullptr) {
		push_front(l, value);
	}
	// caso 2: hay nodos -> buscamos hasta el ultimo o hasta encontrar uno menor
	else {
		Node* aux = l->first;
		while (aux != nullptr && aux->value < value) {
			aux = aux->next;
		}
		
		// caso 1: es el primero
		if (aux == l->first) {
			push_front(l, value);
		}
		// caso 2: es el último
		else if (aux == nullptr) {
			push_back(l, value);
		}
		// caso 3: estamos en el medio, lo ingresamos a la izquierda de aux
		else {
			Node* n = create_node(value);
			aux->prev->next = n;
			n->prev = aux->prev;
			n->next = aux;
			aux->prev = n;
		}
	}
}

/*
Imprimir elementos, del primero al último, de una lista
*/
void print_elements(MyList* l)
{
	Node* aux = l->first;
	while (aux != nullptr) {
		std::cout << aux->value << ' ';
		aux = aux->next;
	}
	std::cout << '\n';
}

/*
Buscamos elemento en lista, devuelve puntero a elemento, si no lo encuentra 
devuelve nullptr.
*/
Node* search_element(MyList* l, int value)
{
	Node* aux = l->first;
	while (aux != nullptr && aux->value != value) {
		aux = aux->next;
	}
	return aux;
}

/*
Si un elemento está en una lista, lo eliminamos
*/
void delete_element(MyList* l, int value)
{
	Node* n = search_element(l, value);

	// Si hemos encontrado un nodo, vemos dónde está para eliminarlo
	if (n != nullptr) {

		// caso 1: es el primero y el último
		if (n == l->first && n == l->last) {
			l->first = nullptr;
			l->last = nullptr;
		}
		// caso 2: es el primero
		else if (n == l->first) {
			l->first = n->next;
			n->next->prev = nullptr;
		}
		// caso 3: es el último
		else if (n == l->last) {
			l->last = n->prev;
			n->prev->next = nullptr;
		}
		// caso 4: es uno del medio
		else {
			n->prev->next = n->next;
			n->next->prev = n->prev;
		}

		free(n);
	}
}

/*
1. Ingresar números hasta ingresar 0 y luego mostrar los números en orden
inverso al ingresado. (Usando pilas con punteros en memoria)
Ejemplo: 100, 200, 300, 0 -> 300, 200, 100
*/
int exercise1(void)
{
	MyStack* s = create_stack();

	int in;
	std::cin >> in;
	while (in != 0) {
		add_element(s, in);
		std::cin >> in;
	}
	
	print_elements(s);
	return EXIT_SUCCESS;
}


/*
2. Ingresar números hasta ingresar 0 y luego mostrar los números en el orden 
ingresado. (Usando colas con punteros en memoria)
Ejemplo: 100, 200, 300, 0 -> 100, 200, 300
*/

int exercise2(void)
{
	MyQueue* q = create_queue();

	int in;
	std::cin >> in;
	while (in != 0) {
		add_element(q, in);
		std::cin >> in;
	}

	print_elements(q);
	return EXIT_SUCCESS;
}

/*
3. Ingresar números hasta ingresar 0 y mostrando cada vez todos los números
ordenados. (Usando listas con punteros en memoria)
Ejemplo: 300 -> 300;
*/
int exercise3(void)
{
	MyList* l = create_list();

	int in;
	std::cin >> in;
	while (in != 0) {
		ordered_insert(l, in);
		print_elements(l);
		std::cin >> in;
	}

	print_elements(l);
	return EXIT_SUCCESS;
}

/*
4. Ingresar números hasta ingresar 0 y mostrando cada vez todos los números
ordenados, si el numero ingresado ya figura en la lista se debe eliminar .
(Usando listas con punteros en memoria)
Ejemplo: 300 -> 300 ; 100 -> 100, 300 ; 200 -> 100, 200, 300 ; 400 -> 100, 200, 300, 400 ; 200 -> 100, 300, 400 ;0
*/
int exercise4(void)
{
	MyList* l = create_list();

	int in;
	std::cin >> in;
	while (in != 0) {
		Node* n = search_element(l, in);

		// si existe, lo eliminamos, sino lo agregamos
		if (n != nullptr) {
			delete_element(l, in);
		}
		else {
			ordered_insert(l, in);
		}
		print_elements(l);

		std::cin >> in;
	}

	return EXIT_SUCCESS;
}

int main(void)
{
	exercise4();
	return EXIT_SUCCESS;
}