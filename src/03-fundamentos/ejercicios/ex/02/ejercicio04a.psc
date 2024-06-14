Función p <- posicion(vector,val,n)
	p <- 0
	Para i<-1 Hasta n Hacer
		Si vector[i]=val Entonces
			p <- i
		FinSi
	FinPara
FinFunción

Algoritmo ejercicio04a
	n <- 7
	Dimensionar vector(n)
	vector[1] <- 10
	vector[2] <- 11
	vector[3] <- 5
	vector[4] <- 7
	vector[5] <- 9
	vector[6] <- 3
	vector[7] <- 2
	Escribir posicion(vector,5,n)
	Escribir posicion(vector,11,n)
	Escribir posicion(vector,23,n)
FinAlgoritmo
