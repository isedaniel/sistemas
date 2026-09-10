Algoritmo max
	// Creamos un conjunto de 10 números al azar
	Dimensionar conjunto[10]
	Para Cada elemento De conjunto Hacer
		elemento <- azar(100) + 1
	FinPara
	
	// Recorremos el conjunto, si encontramos un n superior al que tenemos, lo asignamos a n
	n <- 0
	Para Cada elemento De conjunto Hacer
		Si elemento > n Entonces
			n <- elemento
		FinSi
	FinPara
	
	// Imprimimos n
	Imprimir n
FinAlgoritmo
