Funcion p <- posicion(vector, val, n)
	p <- 0
	Para i Desde 1 Hasta n Hacer
		Si vector[i] = val Entonces
			p <- i
		FinSi
	FinPara
FinFuncion

Algoritmo ejercicio04a
	n <- 7
	Dimensionar vector[n]
	vector[1] <- 10
	vector[2] <- 11
	vector[3] <- 5
	vector[4] <- 7
	vector[5] <- 9
	vector[6] <- 3
	vector[7] <- 2
	
	Imprimir posicion(vector, 5, n)
	Imprimir posicion(vector, 11, n)
	Imprimir posicion(vector, 23, n)
FinAlgoritmo
