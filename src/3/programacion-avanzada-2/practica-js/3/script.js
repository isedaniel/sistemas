class coche {
    constructor(marca, modelo, anio) {
        this.marca = marca;
        this.modelo = modelo;
        this.anio = anio;
    }

    detalles() {
        return `Marca: ${this.marca}, Modelo: ${this.modelo}, Año: ${this.anio}`;
    }
}

const auto = new coche("Ford", "F150", 2022);
console.log(auto.detalles());
