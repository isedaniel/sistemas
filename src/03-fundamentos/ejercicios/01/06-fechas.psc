Algoritmo fechas
	Escribir "Ingrese una fecha formato AAAAMMDD"
	Leer fecha1
	Escribir "Ingrese otra fecha formato AAAAMMDD"
	Leer fecha2
	Si (fecha1 > fecha2)
		Escribir fecha1 " es más reciente."
	FinSi
	Si (fecha1 == fecha2)
		Escribir "Las fechas son iguales."
	SiNo
		Escribir fecha2 " es más reciente."
	FinSi
FinAlgoritmo
