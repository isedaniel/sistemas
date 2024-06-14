Algoritmo ejercicio03
	n <- 10
	Dimensionar vector(n)
	Para i<-1 Hasta n Hacer
		vector[i] <- azar(101)
	FinPara
	Para i<-1 Hasta n-1 Hacer
		Para j<-i+1 Hasta n Hacer
			Si vector[i]>vector[j] Entonces
				temp <- vector[i]
				vector[i] <- vector[j]
				vector[j] <- temp
			FinSi
		FinPara
	FinPara
	sumatoria <- 0
	Para Cada elemento De vector Hacer
		Escribir elemento
		sumatoria <- sumatoria+elemento
	FinPara
	Escribir 'Sumatoria: ', sumatoria
FinAlgoritmo
