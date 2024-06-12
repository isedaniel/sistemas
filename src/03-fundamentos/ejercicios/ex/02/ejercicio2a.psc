Funcion b <- buscar(vector, palabra, n)
	b <- Falso
	Para i Desde 1 hasta n Hacer
		Si vector[i] = palabra Entonces
			b <- Verdadero
		FinSi
	FinPara
FinFuncion

Algoritmo ejercicio2a
	n <- 6
	Dimensionar vector[n]
	vector[1] <- "sol"
	vector[2] <- "luna"
	vector[3] <- "tierra"
	vector[4] <- "agua"
	vector[5] <- "fuego" 
	vector[6] <- "aire"
	
	Imprimir buscar(vector, "sol", n)
	Imprimir buscar(vector, "planta", n)
	Imprimir buscar(vector, "Sol", n)
FinAlgoritmo
