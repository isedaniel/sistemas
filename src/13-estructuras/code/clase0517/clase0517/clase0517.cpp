
#include <iostream>

/*
    Definimos una estructura que tiene un dato entero y un puntero al siguiente nodo.
*/
struct Node
{
    int data;
    Node* next;
};

static void primeraIteracion()
{
    /*
        creo un puntero a un nodo, lo llamo pila y apunto a puntero nulo
    */
    Node* stack = nullptr;

    /*
        creo un nuevo nodo con malloc (estilo C)
        malloc devuelve una dirección
        casteo esa dirección a Node*
        y la asigno al identificador n
    */
    Node* n = (Node*)malloc(sizeof(Node));

    /*
        voy a donde apunta data y asigno 10
        y puntero al siguiente = nullptr
    */
    n->data = 10;
    n->next = nullptr;

    /*
        hacemos que pila apunte al mismo nodo que apunta n
    */
    stack = n;

    /*
        ahora hacemos que n apunte a otro nodo nuevo
    */
    n = (Node*)malloc(sizeof(Node));
    n->data = 20;
    /*
        que apunte al nodo ya creado
    */
    n->next = stack;

    /*
        ahora volvemos a hacer que pila apunte al primero
        quedando: stack -> 20 -> 10
    */
    stack = n;

    /*
        creamos un tercer nodo
    */
    n = (Node*)malloc(sizeof(Node));
    n->data = 30;
    n->next = stack;

    /*
        volvemos a hacer que la pila apunte al 30
    */
    stack = n;

    /*
        creamos un puntero que apunte al primero de la pila
        y que vamos a ir cambiando en la iteración
    */
    Node* aux = stack;
    while (aux != nullptr)
    {
        std::cout << aux->data << '\n';
        aux = aux->next;
    }
    std::cout << '\n';

    /*
        Creamos nodo temp para liberar memoria
        y desapilamos haciendo que la cola apunte al nodo siguiente
    */
    Node* temp = stack;
    stack = stack->next;
    free(temp);

    /*
        imprimimos
    */
    aux = stack;
    while (aux != nullptr)
    {
        std::cout << aux->data << '\n';
        aux = aux->next;
    }
}

int main()
{
    /*
        creo la pila
    */
    Node* stack = nullptr;

    /*
        primer nodo
    */
    Node* n = (Node*)malloc(sizeof(Node));
    n->data = 10;
    n->next = nullptr;
    stack = n;

    /*
        segundo nodo
    */
    n = (Node*)malloc(sizeof(Node));
    n->data = 20;
    n->next = stack;
    stack = n;

    /*
        tercer nodo
    */
    n = (Node*)malloc(sizeof(Node));
    n->data = 30;
    n->next = stack;
    stack = n;

    /*
        imprimimos
    */
    Node* aux = stack;
    while (aux != nullptr)
    {
        std::cout << aux->data << '\n';
        aux = aux->next;
    }
    std::cout << '\n';

    /*
        pedimos número para nodo nuevo
    */
    int num = 0;
    std::cin >> num;
    n = (Node*)malloc(sizeof(Node));
    n->data = num;

    /*
        si el primer nodo es menor,
        (o la pila está vacía)
        convertimos a n en el nuevo primer nodo de la pila
        SINO
        iteramos hasta encontrar lo que suceda primero:
        el último nodo de la pila 
        O
        que el nodo siguiente sea menor al que queremos insertar
        insertamos nuevo nodo en esa posición
    */
    if ((stack == nullptr) || (n->data > stack->data))
    {
        n->next = stack;
        stack = n;
    }
    else
    {
        aux = stack;
        while (aux->next != nullptr && aux->next->data > n->data)
        {
            aux = aux->next;
        }
        n->next = aux->next;
        aux->next = n;
    }

    /*
        imprimimos
    */
    aux = stack;
    while (aux != nullptr)
    {
        std::cout << aux->data << '\n';
        aux = aux->next;
    }
    std::cout << '\n';
}