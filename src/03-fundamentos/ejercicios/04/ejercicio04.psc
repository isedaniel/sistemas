Funcion v <- velocidad(distancia, tiempo)
	v <- (distancia * 1000)/(tiempo * 60)
FinFuncion

Algoritmo ejercicio04
	Escribir "Ingrese distancia en kil�metros: "
	Leer km
	Escribir "Ingrese tiempo en minutos: "
	Leer min
	
	Escribir "La velocidad es " velocidad(km, min) " metros por segundo."
FinAlgoritmo
