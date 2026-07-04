// Selecciono la base de datos
db = db.getSiblingDB('tiendaOnline');

// Limpio por las dudas la colección e inserto los datos
db.ventas.drop();
print("Creando colección Ventas");
db.ventas.insertMany([
	{
	"producto": "Mouse inalámbrico",
	"precio": 4500,
	"categoria": "Accesorios",
	"cantidad": 3,
	"fecha": ISODate("2025-06-01T12:00:00Z")
	},
	{
	"producto": "Teclado mecánico",
	"precio": 9500,
	"categoria": "Accesorios",
	"cantidad": 2,
	"fecha": ISODate("2025-06-02T15:30:00Z")
	},
	{
	"producto": "Notebook Dell",
	"precio": 420000,
	"categoria": "Equipos",
	"cantidad": 1,
	"fecha": ISODate("2025-06-03T11:00:00Z")
	}
]);


print("Consultando productos con categoría Accesorios");
print(db.ventas.find({"categoria": "Accesorios"}));
print();
print();

print("2. Productos con precio mayor a $5000 y cantidad menor o igual a 2");
print(db.ventas.find(
	{
		precio: {$gt: 5000}, 
		cantidad: {$lte: 2}
	}, 
	{
		_id: 0,
		producto: 1,
		precio: 1,
		cantidad: 1
	}
));

print("Ventas de la categoría accesorios:");
print(db.ventas.countDocuments({
	categoria: "Accesorios"
}));

print();
print();

print("Monto por categoría");

print(db.ventas.aggregate([
	{
		$project: {
			categoria: 1,
			monto: { $multiply: ["$precio", "$cantidad"] }
		}
	},
	{
		$group: {
			_id: "$categoria",
			totalVentas: { $sum: "$monto" }
		}
	},
	{
		$sort: { totalVentas: -1 }
	},
	{
		$project: {
			_id: 0,
			categoria: "$_id",
			totalVentas: 1
		}
	}
]));