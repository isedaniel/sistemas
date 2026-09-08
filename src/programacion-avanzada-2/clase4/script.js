console.log("Hola desde el script");

/* comentario
   multilinea
*/

// comentario en una línea


// No es obligatorio, pero recomendable que los _statements_ terminen en punto y
// coma
console.log("console log con punto y coma");


// declarar e inicializar una variable
let nombre = "Daniel";


// Se puede declarar con var pero se prefiere let para evitar problemas de scope
if (true) {
    var nombre2 = "Noli";
}
// Sigue siendo accesible fuera del bloque por el var
console.log(nombre2);


// Puedo declarar una constante con const
const nombre3 = "Beli";


// Podemos ver tipos de datos con el operador typeof
console.log(typeof nombre3);

// Hay tipos de datos primitivos:
// - string
// - number
// - undefined
// - null
// - boolean
// - symbol
// Y hay tipo de dato objeto. Todo tipo de dato no primitivo es objeto

// JS es de tipado dinamico
console.log(nombre);
// => Daniel
nombre = 12;
console.log(nombre);
// => 12


// JS soporta la interpolación de strings
console.log(`El nombre es: ${nombre3}`);


// Hacemos las comparaciones con === para que sean estrictas
const myArr = [1, 2, 3, 4, 5, 6, 7];
if (myArr.length === "0") {
    // Nunca va a entrar aquí, porque estamos comparando un string
}
else if (myArr.length === 0) {
    // Aquí podría entrar, pero no, porque tiene 3 elementos
}
else {
    console.log(`Tiene ${myArr.length} elementos.`);
}

// Podemos definir fucniones lambda o flecha, asignarlas a una variable o 
// pasarlas como argumento
const even = n => n % 2 === 0;

console.log(myArr.filter(even));
// => [2, 4, 6]

console.log(myArr.filter(n => n % 2 !== 0));
// => [1, 3, 5, 7]
