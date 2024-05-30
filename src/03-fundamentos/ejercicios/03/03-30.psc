Algoritmo ejercicio30
	Dimensionar v1[10]
	
	entrada <- 0
	i <- 1
	Mientras entrada >= 0 y i <= 10 Hacer
		Escribir "Ingrese un número: "
		Leer entrada
		v1[i] <- entrada
		i <- i + 1
	FinMientras
	
	i <- 1
	Mientras i <= 10 y v1[i] >= 0 Hacer
		Escribir v1[i]
		i <- i + 1
	FinMientras
FinAlgoritmo
