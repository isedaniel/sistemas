
#include <iostream>

/*
    Nodo con puntero al siguiente y al anterior
*/
struct Node
{
    int value;
    Node* next;
    Node* prev;
};

/*
    Creamos nodo con malloc
*/
static Node* create_node(int value)
{
    Node* n = (Node*)malloc(sizeof(Node));

    if (!n)
    {
        exit(EXIT_FAILURE);
    }
    n->value = value;
    n->prev = nullptr;
    n->next = nullptr;
    return n;
}

/*
    Lista tiene un puntero al nodo inicial y al final
*/
struct List
{
    Node* first;
    Node* last;
};

/*
    Inicializamos lista vac�a
*/
static void initialize_list(List& l)
{
    l.first = nullptr;
    l.last = nullptr;
}

/*
    Insertamos nodo nuevo adelante de la lista
*/
static void insert_first(List& l, int value)
{
    Node* n = create_node(value);
    if (l.first == nullptr)
    {
        l.first = n;
        l.last = n;
    }
    else
    {
        n->next = l.first;
        l.first->prev = n;
        l.first = n;
    }
}

/*
    Insertamos nodo nuevo al �ltimo de la lista
*/
static void insert_last(List& l, int value)
{
    Node* n = create_node(value);
    if (l.last == nullptr)
    {
        l.first = n;
        l.last = n;
    }
    else
    {
        n->prev = l.last;
        l.last->next = n;
        l.last = n;
    }
}

/*
    Imprimimos valores de la lista
*/
static void print_values(const List& l)
{
    Node* aux = l.first;
    while (aux != nullptr)
    {
        std::cout << aux->value << '\n';
        aux = aux->next;
    }
}

/*
    Devuelve el primer nodo cuyo valor sea value, sino nullptr
*/
static Node* search_node(const List& l, int value)
{
    Node* aux = l.first;
    while (aux != nullptr)
    {
        if (aux->value == value) return aux;
        aux = aux->next;
    }
    return nullptr;
}

/*
    Eliminamos primer nodo
*/
static void delete_first(List& l)
{
    if (l.first == nullptr)
    {
        return;
    }
    else
    {
        Node* aux = l.first;
        l.first = l.first->next;
        free(aux);

        // Si first es nulo, no tenemos mas elementos
        if (l.first == nullptr) l.last = nullptr;
    }
}

/*
    Primera iteracion
*/
static void first_iteration()
{
    /*
        Creamos lista: 11, 12, 13
    */
    List l{};
    initialize_list(l);
    insert_first(l, 12);
    insert_first(l, 11);
    insert_last(l, 13);
    print_values(l);

    /*
        Buscamos el 13
    */
    Node* n = search_node(l, 13);
    if (n != nullptr) std::cout << "nodo: " << n->value << '\n';

    /*
        Eliminamos el primer nodo: 12, 13
    */
    delete_first(l);
    print_values(l);

    /*
        Eliminamos otros dos: {}
    */
    delete_first(l);
    delete_first(l);
}


/*
    Nodo de strings
*/
struct StringNode
{
    StringNode* next;
    StringNode* prev;
    std::string value;

    StringNode(const std::string& s) : value(s), next(nullptr), prev(nullptr) {}
};


/*
    Creamos nodo con new
*/
static StringNode* create_node(const std::string& value)
{
    return new StringNode(value);
}


/*
    Lista de nodo de strings
*/
struct StringList
{
    StringNode* first;
    StringNode* last;

    // Constructor predeterminado
    StringList(): first(nullptr), last(nullptr) {}
};


/*
    Insertamos nodo nuevo adelante de la lista
*/
static void insert_first(StringList& l, const std::string& value)
{
    StringNode* n = create_node(value);
    if (l.first == nullptr)
    {
        l.first = n;
        l.last = n;
    }
    else
    {
        n->next = l.first;
        l.first->prev = n;
        l.first = n;
    }
}


/*
    Insertamos nodo nuevo al final de la lista
*/
static void insert_last(StringList& l, const std::string& value)
{
    StringNode* n = create_node(value);
    if (l.last == nullptr)
    {
        l.first = n;
        l.last = n;
    }
    else
    {
        n->prev = l.last;
        l.last->next = n;
        l.last = n;
    }
}


/*
    Imprimimos lista de string
*/
static void print_list(StringList& l)
{
    StringNode* aux = l.first;
    while (aux != nullptr)
    {
        std::cout << aux->value << '\n';
        aux = aux->next;
    }
    std::cout << '\n';
}


/*
    Eliminamos primer nodo
*/
static void delete_first(StringList& l)
{
    if (l.first == nullptr)
    {
        return;
    }
    else
    {
        StringNode* aux = l.first;
        l.first = l.first->next;
        delete aux;

        // Si first es nulo, no tenemos mas elementos
        if (l.first == nullptr) l.last = nullptr;
    }
}


int main()
{
    /*
        Creo lista: "gordito", "noelia", "dani"
    */
    StringList sl{};
    insert_first(sl, "noelia");
    insert_first(sl, "gordito");
    insert_last(sl, "dani");
    print_list(sl);

    /*
        Meto y saco dani
    */
    insert_first(sl, "dani");
    print_list(sl);

    delete_first(sl);
    print_list(sl);
}
