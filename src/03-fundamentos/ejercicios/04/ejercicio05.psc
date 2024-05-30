Funcion intercambio(a Por Referencia, b Por Referencia)
	temp <- a
	a <- b
	b <- temp
FinFuncion

Algoritmo ejercicio05
	Escribir "Ingrese valor a: "
	Leer a
	Escribir "Ingrese valor b: "
	Leer b
	Escribir "Valores ingresados: " a " " b
	intercambio(a, b)
	Escribir "Intercambio: " a " " b
FinAlgoritmo
