// Crear función multiplicar que reciba dos números.
// Crear segunda función, elevarAlCuadrado, que devuelva el cuadrado de un
// número.
// Dentro de multiplicar, llamar a elevar al cuadrado antes de multiplicar.

function multiplicar(x, y) {
    return elevarAlCuadrado(x)
        * elevarAlCuadrado(y);
}


function elevarAlCuadrado(n) { return n*n; }

console.log(elevarAlCuadrado(2)); // => 4

console.log(multiplicar(2, 3)); // 4 * 9 => 36
