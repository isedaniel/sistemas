"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
let numero = 4;
numero = 3;
const encontrado = true;
console.log("hello, world");
console.log(numero);
console.log(encontrado);
let numeros = [1, 2, 3];
numeros.push(4);
numeros.forEach(element => {
    console.log(element);
});
const tupla = ["Dani", 35, true];
console.log(tupla);
const tuplas = [
    ["Dani", 35],
    ["Noli", 34],
];
console.log(tuplas);
// se puede hacer una unión
const union = "Dan";
// any: unión de todos los tipos
let any = "Any";
any = true;
any = 12;
console.log(any);
// tenemos enums
var Color;
(function (Color) {
    Color[Color["Rojo"] = 0] = "Rojo";
    Color[Color["Verde"] = 1] = "Verde";
    Color[Color["Azul"] = 2] = "Azul";
})(Color || (Color = {}));
;
const color = Color.Rojo;
console.log(color);
let persona = { nombre: "Dani", edad: 35 };
console.log(persona);
;
let otraPersona = persona;
console.log(otraPersona);
// por ultimo, las clases
// podemos indicar que implementa la interfaz
class Person {
    // tenemos campos
    nombre = "";
    edad = 0;
    constructor(nombre, edad) {
        this.nombre = nombre;
        this.edad = edad;
    }
    saludar() {
        return `Hola, soy ${this.nombre}, tengo ${this.edad} años`;
    }
}
const last = new Person("Dani", 35);
console.log(last.saludar());
// tenemos herencia
class Empleado extends Person {
    sueldo;
    constructor(nombre, edad, sueldo) {
        super(nombre, edad);
        this.sueldo = sueldo;
    }
    saludar() {
        return `Hola, soy ${this.nombre}, tengo ${this.edad} años y cobro ${this.sueldo}`;
    }
    trabajar() {
        this.sueldo *= 1.1;
    }
}
const empleado = new Empleado("Dani", 35, 1000);
empleado.trabajar();
console.log(empleado.saludar());
//# sourceMappingURL=index.js.map