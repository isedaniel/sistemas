Función b <- buscar(vector,palabra,n)
	b <- 0
	Para i<-1 Hasta n Hacer
		Si vector[i]=palabra Entonces
			b <- b+1
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
	vector[5] <- 'sol'
	vector[6] <- 'aire'
	Escribir buscar(vector,'sol',n)
	Escribir buscar(vector,'planta',n)
	Escribir buscar(vector,'luna',n)
	Escribir buscar(vector,'Sol',n)
FinAlgoritmo
