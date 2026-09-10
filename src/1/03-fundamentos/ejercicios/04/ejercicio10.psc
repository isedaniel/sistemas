Funcion m <- min(vector)
	m <- vector[1]
	Para Cada elemento De vector Hacer
		Si elemento < m Entonces
			m <- elemento
		FinSi
	FinPara
FinFuncion

Algoritmo ejercicio10
	Dimensionar vector[10]
	Para i Desde 1 Hasta 10 Hacer
		vector[i] <- azar(1000) + 1
		Imprimir vector[i]
	FinPara
	
	Imprimir ""
	
	Imprimir "El valor mínimo es " Min(vector)
FinAlgoritmo
