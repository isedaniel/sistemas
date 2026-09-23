// Crear función que reciba un array de números y devuelva un nuevo array con
// los pares.

function filtrarPares(numeros) {
    /*
    const res = [];
    for (let i=0; i<numeros.length; i++) {
        if (numeros[i] % 2 == 0) {
            res.push(numeros[i]);
        }
    }
    return res;
    */

    return numeros.filter(n => !(n & 1));
}

const arr = [1, 2, 3, 4, 5, 6, 7, 8];
console.log(filtrarPares(arr)); // => [2, 4, 6, 8]

