Funcion b <- buscar(vector, palabra, n)
	b <- 0
	Para i Desde 1 hasta n Hacer
		Si vector[i] = palabra Entonces
			b <- b + 1
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
	vector[5] <- "sol" 
	vector[6] <- "aire"
	
	Imprimir buscar(vector, "sol", n)
	Imprimir buscar(vector, "planta", n)
	Imprimir buscar(vector, "luna", n)
	Imprimir buscar(vector, "Sol", n)
FinAlgoritmo
