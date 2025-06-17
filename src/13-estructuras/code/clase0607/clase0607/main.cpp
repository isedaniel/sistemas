#include <iostream>

struct Node {
	int value;
	Node* next;
	Node* prev;
};

Node* create_node(int value)
{
	Node* n = (Node*)malloc(sizeof(Node));

	if (n == nullptr) 
		exit(1);

	n->value = value;
	n->next = nullptr;
	n->prev = nullptr;
}

// Inserto nodo adelante del nodo recibido
void insert_after(Node* n, int value)
{
	Node* after = create_node(value);

	if (after == nullptr) exit(1);

	after->next = n->next;
	n->next = after;
}

struct List {
	Node* first;
	Node* last;
};

List* create_list()
{
	List* l = (List*)malloc(sizeof(List));

	if (l == nullptr)
		exit(1);

	l->first = nullptr;
	l->last = nullptr;
}

void push_front(List* l, int value)
{
	Node* n = create_node(value);

	if (l->first == nullptr) {
		l->first = n;
		l->last = n;
	}
	else {
		n->next = l->first;
		l->first->prev = n;
		l->first = n;
	}
}

void push_back(List* l, int value)
{
	Node* n = create_node(value);

	if (l->last == nullptr) {
		l->first = n;
		l->last = n;
	}
	else {
		l->last->next = n;
		n->prev = l->last;
		l->last = n;
	}
}

void print_list(List* l)
{
	Node* aux = l->first;
	while (aux != nullptr) {
		std::cout << aux->value << '\n';
		aux = aux->next;
	}
	std::cout << "-----\n\n";
}

void reverse_print(List* l)
{
	Node* aux = l->last;

	while (aux != nullptr) {
		std::cout << aux->value << '\n';
		aux = aux->prev;
	}
	std::cout << "-----\n\n";
}

// Eliminamos primer elemento de la lista
void delete_first(List* l)
{
	Node* aux = l->first;

	if (l->first == nullptr) {
		return;
	}

	if (l->first == l->last) {
		l->first = nullptr;
		l->last = nullptr;
	}
	else {
		l->first = l->first->next;
		l->first->prev = nullptr;
	}
	
	free(aux);
}

// Eliminamos último elemento de la lista
void delete_last(List* l)
{
	Node* aux = l->last;

	// Caso 1: Lista vacía
	if (l->last == nullptr) {
		return;
	}
	
	// Caso 2: Lista con un solo elemento
	if (l->last == l->first) {
		l->first = nullptr;
		l->last = nullptr;
	}
	// Caso 3: Lista con más de un elemento
	else {
		l->last = l->last->prev;
		l->last->next = nullptr;
	}
	
	free(aux);
}

// Eliminamos la lista completa
void delete_all(List* l)
{
	while (l->first != nullptr)
	{
		delete_first(l);
	}
}

// Devuelve primer elemento de la lista
int get_first(List* l)
{
	if (l->first != nullptr)
		return l->first->value;
}

// Devuelve último elemento de la lista
int get_last(List* l)
{
	if (l->last != nullptr)
		return l->last->value;
}

// Chequeamos que la lista esté vacía
bool empty_list(List* l)
{
	return l->first == nullptr;
}

// Imprime si está vacía o no
void is_empty(List* l)
{
	if (empty_list(l))
		std::cout << "Empty\n---\n";
	else
		std::cout << "Not empty.\n---\n";
}

// Devuelve el tamaño
int get_size(List* l)
{
	int size = 0;
	Node* aux = l->first;
	while (aux != nullptr) {
		size++;
		aux = aux->next;
	}

	return size;
}

// Imprime el size
void print_size(List* l)
{
	std::cout << "Size is: " << get_size(l) << "\n---\n";
}

// Inserto valor en posición deseada
void insert_at(List* l, int pos, int value)
{
	if (pos == 0) {
		push_front(l, value);
		return;
	}

	Node* aux = l->first;
	while (aux->next != nullptr && pos > 1) {
		aux = aux->next;
		pos--;
	}
	insert_after(aux, value);
}

// Buscar nodo por valor
Node* search(List* l, int value)
{
	Node* aux = l->first;
	while (aux != nullptr && aux->value != value) {
		aux = aux->next;
	}
	return aux;
}

void delete_value(List* l, int value)
{
	Node* aux = search(l, value);
	// No lo encuentra, cerramos antes de hacer nada
	if (aux == nullptr) return;

	// Es el único
	if (aux->prev == nullptr && aux->next == nullptr) {
		delete_all(l);
	}
	// Es el primero, pero no el único
	else if (aux->prev == nullptr && aux->next != nullptr) {
		delete_first(l);
	}
	// Es el último, pero no el único
	else if (aux->prev != nullptr && aux->next == nullptr) {
		delete_last(l);
	}
	// Está en el medio
	else {
		aux->prev->next = aux->next;
		aux->next->prev = aux->prev;
		free(aux);
	}
}

int main(void)
{
	List* l = create_list();
	push_front(l, 1);
	push_back(l, 2);
	push_back(l, 3);

	print_list(l);
	print_size(l);

	push_front(l, 0);
	push_front(l, -1);
	push_back(l, 4);
	push_back(l, 5);

	print_list(l);
	reverse_print(l);
	print_size(l);


	delete_first(l);
	delete_last(l);

	print_list(l);
	reverse_print(l);

	delete_first(l);
	delete_last(l);

	print_list(l);
	reverse_print(l);

	push_front(l, 0);
	push_back(l, 4);

	print_list(l);
	reverse_print(l);

	insert_at(l, 0, -1);
	print_list(l);
	print_size(l);

	insert_at(l, 600, 5);

	std::cout << "Primer elemento: " << get_first(l) << "\n---\n";

	print_list(l);	
	is_empty(l);
	print_size(l);

	Node* n = search(l, 4);
	if (n) insert_after(n, 16);
	print_list(l);

	n = search(l, 55);
	if (n) insert_after(n, 16);
	print_list(l);

	delete_value(l, 5);
	print_list(l);

	delete_all(l);
	is_empty(l);
	print_size(l);
}