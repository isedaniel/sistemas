
// definimos una función
function PersonaAntigua(nombre, edad) {
    this.nombre = nombre;
    this.edad = edad;

    this.saludar = () => {
        console.log(`Hola, mi nombre es ${this.nombre}.`);
    }
}

// forma antigua de crear un objeto, con funciones generadoras
let unaPersonaAntigua = new PersonaAntigua("Dani", 35);
unaPersonaAntigua.saludar();

// se llama función generadora, anterior a ECMA-Script6

// desde ES6 tenemos la palabra reservada class
class Persona {
    constructor(nombre, edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    saludar() {
        console.log("Hola, soy " + this.nombre);
    }
}

// creamos una instancia como es usual en cualquier lenguaje orientado a objetos
let unaPersona = new Persona("Dani", 35);
unaPersona.saludar();
