// Selecciono la base
db = db.getSiblingDB('semilla');

// Creamos la colección Semillas
// La limpiamos primero por las dudas
db.semillas.drop();
print("Creando la colección semillas");

// Creamos los de 250g
db.semillas.insertMany([
    {
        nombre: "Chia",
        peso: 250,
    },
    {
        nombre: "Lino",
        peso: 250,
    },
    {
        nombre: "Girasol",
        peso: 250,
    },
    {
        nombre: "Sesamo",
        peso: 250,
    },
    {
        nombre: "Amapola",
        peso: 250,
    },
]);

// Los de 500
db.semillas.insertMany([
    {
        nombre: "Chia",
        peso: 500,
    },
    {
        nombre: "Lino",
        peso: 500,
    },
    {
        nombre: "Girasol",
        peso: 500,
    },
    {
        nombre: "Sesamo",
        peso: 500,
    },
    {
        nombre: "Amapola",
        peso: 500,
    },
]);

// Por último, los de 1000g
db.semillas.insertMany([
    {
        nombre: "Chia",
        peso: 1000,
    },
    {
        nombre: "Lino",
        peso: 1000,
    },
    {
        nombre: "Girasol",
        peso: 1000,
    },
    {
        nombre: "Sesamo",
        peso: 1000,
    },
    {
        nombre: "Amapola",
        peso: 1000,
    },
]);

// Creamos la colección mermeladas, la limpiamos primero para
// facilitar los tests.
db.mermeladas.drop();

// Insertamos las Arcor
db.mermeladas.insertMany([
    {
        marca: "Arcor",
        peso: 400,
        sabor: "Frutilla",
    },
    {
        marca: "Arcor",
        peso: 400,
        sabor: "Durazno",
    },
    {
        marca: "Arcor",
        peso: 400,
        sabor: "Naranja",
    },
    {
        marca: "Arcor",
        peso: 400,
        sabor: "Frutos Rojos",
    },
]);

// Insertamos las Noel
db.mermeladas.insertMany([
    {
        marca: "Noel",
        peso: 400,
        sabor: "Frutilla",
    },
    {
        marca: "Noel",
        peso: 400,
        sabor: "Durazno",
    },
    {
        marca: "Noel",
        peso: 400,
        sabor: "Naranja",
    },
    {
        marca: "Noel",
        peso: 400,
        sabor: "Frutos Rojos",
    },
]);

// Insertamos las Limay
db.mermeladas.insertMany([
    {
        marca: "Limay",
        peso: 400,
        sabor: "Frutilla",
    },
    {
        marca: "Limay",
        peso: 400,
        sabor: "Durazno",
    },
    {
        marca: "Limay",
        peso: 400,
        sabor: "Naranja",
    },
    {
        marca: "Limay",
        peso: 400,
        sabor: "Frutos Rojos",
    },
]);

// Creamos la colección hierbas
db.hierbas.drop();
db.hierbas.insertMany([
    {
        nombre: "Ajo",
        peso: 500,
        utilidad: "Hipolipemiante",
    },
    {
        nombre: "Aloe Vera",
        peso: 500,
        utilidad: "Laxante",
    },
    {
        nombre: "Arándano",
        peso: 500,
        utilidad: "Infecciones Urinarias",
    },
    {
        nombre: "Soja",
        peso: 500,
        utilidad: "Menopausia y Presión Arterial",
    },
    {
        nombre: "Valeriana",
        peso: 500,
        utilidad: "Stress y Presión Arterial",
    },
]);

// Por último creamos las legumbres
db.legumbres.drop();
db.legumbres.insertMany([
    {
        nombre: "Porotos",
        peso: 500,
    },
    {
        nombre: "Lentejas",
        peso: 500,
    },
    {
        nombre: "Arvejas",
        peso: 500,
    },
    {
        nombre: "Garbanzos",
        peso: 500,
    },
]);
print();
print();

// Imprimimos las semillas, ordenadas alfabéticamente
print("Imprimimos todas las semillas, ordenadas alfabéticamente");
print(db.semillas.find().sort({ nombre: 1 }));
print();
print();

// Eliminamos las mermeladas de naranja
print("Eliminamos mermeladas de naranja");
db.mermeladas.deleteMany({ sabor: "Naranja" });
// Imprimimos sin id para chequear
print(db.mermeladas.find({},{ _id: 0}));
