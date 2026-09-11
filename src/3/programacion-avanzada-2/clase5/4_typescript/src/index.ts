let numero = 4;
numero = 3;

const encontrado = true;

console.log("hello, world");
console.log(numero);
console.log(encontrado);

let numeros: number[] = [1, 2, 3];
numeros.push(4);
numeros.forEach(element => {
    console.log(element);
});

const tupla: [string, number, boolean] = ["Dani", 35, true];
console.log(tupla);

const tuplas: [string, number][] = [
    ["Dani", 35],
    ["Noli", 34],
]
console.log(tuplas);

// se puede hacer una unión
const union: number | boolean | string = "Dan";

// any: unión de todos los tipos
let any: any = "Any";
any = true;
any = 12;
console.log(any);

// tenemos enums
enum Color {
    Rojo,
    Verde,
    Azul
};
const color: Color = Color.Rojo;
console.log(color);

// objetos, tenemos tres tipos de construcciones
// primero el type
type Persona = {
    nombre: string,
    edad: number,
};
let persona: Persona = { nombre: "Dani", edad: 35 };
console.log(persona);

// segundo la interfaz
interface IPersona {
    nombre: string;
    edad: number;
};
let otraPersona: IPersona = persona;
console.log(otraPersona);

// por ultimo, las clases
// podemos indicar que implementa la interfaz
class Person implements IPersona {
    // tenemos campos
    nombre: string = "";
    edad: number = 0;

    constructor(nombre: string, edad: number) {
        this.nombre = nombre;
        this.edad = edad;
    }

    saludar(): string {
        return `Hola, soy ${this.nombre}, tengo ${this.edad} años`;
    }
}
const last = new Person("Dani", 35);
console.log(last.saludar());

// tenemos herencia
class Empleado extends Person {
    sueldo: number;

    constructor(nombre: string, edad: number, sueldo: number) {
        super(nombre, edad);
        this.sueldo = sueldo;
    }
    override saludar(): string {
        return `Hola, soy ${this.nombre}, tengo ${this.edad} años y cobro ${this.sueldo}`;
    }

    trabajar(): void {
        this.sueldo *= 1.1;
    }
}
const empleado = new Empleado("Dani", 35, 1000);
empleado.trabajar();
console.log(empleado.saludar());
