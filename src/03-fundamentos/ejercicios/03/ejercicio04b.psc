Funcion m <- mediana(vector, n)
	Si n Es Par Entonces
		n1 <- vector[n/2]
		n2 <- vector[(n/2) + 1]
		m <- (n1 + n2)/2
	SiNo
		m <- vector[Trunc(n/2) + 1]
	FinSi
FinFuncion

Algoritmo ejercicio04b
	n <- 7
	Dimensionar vector[n]
	vector[1] <- 10
	vector[2] <- 12
	vector[3] <- 25
	vector[4] <- 47
	vector[5] <- 88
	vector[6] <- 93
	vector[7] <- 98
	Imprimir mediana(vector, n)

	n <- 8
	Dimensionar vector2[n]
	vector2[1] <- 10
	vector2[2] <- 12
	vector2[3] <- 25
	vector2[4] <- 47
	vector2[5] <- 50
	vector2[6] <- 88
	vector2[7] <- 93
	vector2[8] <- 98
	Imprimir mediana(vector2, n)
FinAlgoritmo
