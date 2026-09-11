// Hoy vamos a ver un poquito del DOM. Es una representación del documento HTML
// Se puede acceder por el objeto document, que es una representación de árbol 
// del DOM. A través de los children del document podemos llegar a todos los 
// elementos hijos

// Si asignamos un hijo a una variable, tenemos una referencia a ese elemento y 
// podemos hacer modificiaciones
let encabezado = document.children[0].children[1].children[0];
encabezado.innerHTML = "Holas";

// También podemos elegirlo por ID
encabezado = document.getElementById("encabezado");
encabezado.innerHTML = "hola, mundo";

// podemos poner seter una función callback a un evento
const encabezados = ["bienvenidos!", "hola, mundo", "que hubo"];
let boton = document.getElementById("cliqueame");
boton.addEventListener('click', () => {
    let n = Math.floor(Math.random() * 3);
    console.log(n);
    encabezado.innerHTML = encabezados[n];
})