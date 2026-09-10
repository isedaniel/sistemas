Función b <- buscar(vector,palabra,n)
	b <- Falso
	Para i<-1 Hasta n Hacer
		Si vector[i]=palabra Entonces
			b <- Verdadero
		FinSi
	FinPara
FinFunción

Algoritmo ejercicio2a
	n <- 6
	Dimensionar vector(n)
	vector[1] <- 'sol'
	vector[2] <- 'luna'
	vector[3] <- 'tierra'
	vector[4] <- 'agua'
	vector[5] <- 'fuego'
	vector[6] <- 'aire'
	Escribir buscar(vector,'sol',n)
	Escribir buscar(vector,'planta',n)
	Escribir buscar(vector,'Sol',n)
FinAlgoritmo
