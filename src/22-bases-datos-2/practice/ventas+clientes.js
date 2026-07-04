print("Escenario ventas + clientes");

// Ventas
// La limpiamos primero
db.ventas.drop();
db.ventas.insertMany([
	{
		cliente_id: 1,
		producto: "Teclado",
		precio: 9000,
		cantidad: 1,
		fecha: ISODate("2025-06-01T10:00:00Z")
	},
	{
		cliente_id: 2,
		producto: "Monitor",
		precio: 45000,
		cantidad: 1,
		fecha: ISODate("2025-06-01T11:00:00Z")
	},
	{
		cliente_id: 1,
		producto: "Mouse",
		precio: 3000,
		cantidad: 2,
		fecha: ISODate("2025-06-02T09:30:00Z")
	},
	{
		cliente_id: 3,
		producto: "Notebook",
		precio: 400000,
		cantidad: 1,
		fecha: ISODate("2025-06-03T14:15:00Z")
	}
]);

// Clientes
// También limpiamos primero por las dudas
db.clientes.drop();
db.clientes.insertMany([
	{
		_id: 1,
		nombre: "Ana Pérez",
		email: "ana@gmail.com",
		vip: true
	},
	{
		_id: 2,
		nombre: "Carlos Gómez",
		email: "carlos@gmail.com",
		vip: false
	},
	{
		_id: 3,
		nombre: "Lucía Martínez",
		email: "lucia@gmail.com",
		vip: true
	}
]);

// Objetivo: Mostrar total gastado por cada cliente VIP, incluyendo nombre y correo
print(db.ventas.aggregate([
	{
		// JOIN
		$lookup: {
			from: "clientes",
			localField: "cliente_id",
			foreignField: "_id",
			as: "cliente"
		}
	},
	{
		$unwind: "$cliente",
	},
	{
		// Filtrar VIPs
		$match: { "cliente.vip": true }
	},
	{
		// Proyectamos
		$project: {
			nombre: "$cliente.nombre",
			email: "$cliente.email",
			totalVenta: { $multiply: [ "$precio", "$cantidad" ] },
		}
	},
	{
		// Agrupamos por cliente para sumar el total
		$group: {
			_id: { nombre: "$nombre", email: "$email" },
			total: { $sum: "$totalVenta" }
		}
	},
	{
		$project: {
			_id: 0,
			nombre: "$_id.nombre",
			email: "$_id.email",
			total: 1,
		}
	}
*/
]));