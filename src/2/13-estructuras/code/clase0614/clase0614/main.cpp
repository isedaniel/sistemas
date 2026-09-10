#include <iostream>

using namespace std;

struct Node {
    int value;       
    Node* left;
    Node* right;  
};

Node* crearNode(int valor) {
    Node* nuevo = (Node*)malloc(sizeof(Node));
    if (!nuevo) 
        exit(EXIT_FAILURE); 

    nuevo->value = valor;
    nuevo->left = nullptr; 
    nuevo->right = nullptr; 
    return nuevo;
}

Node* insert(Node*& raiz, int valor) { 
    if (raiz == nullptr) { 
        raiz = crearNode(valor);
        return raiz;
    }
    if (valor < raiz->value) { 
        raiz->left = insert(raiz->left, valor); 
    }
    else if (valor > raiz->value) { 
        raiz->right = insert(raiz->right, valor); 
    }
    return raiz;
}

void recorrerInOrden(Node* raiz) { 
    static int c = 0;

    cout << ++c << "--INICIO--" << '\n';
    if (raiz != nullptr) { 
        recorrerInOrden(raiz->left); 
        cout << raiz->value << "\n"; 
        recorrerInOrden(raiz->right); 
    }
    cout << c-- << "--FIN--" << '\n';
}

int main() {
    Node* tree = nullptr;
    insert(tree, 50);
    insert(tree, 30);
    insert(tree, 31);
    insert(tree, 32);
    insert(tree, 60);
    insert(tree, 59);
    insert(tree, 58);

    recorrerInOrden(tree);

}