Algoritmo notas
	Dimensionar nota[5]
	Definir nota, suma, max, min, entrada Como Real
	max <- 0
	min <- 10
	suma <- 0
	entrada <- -1
	Para i Desde 1 Hasta 5 Hacer
		Mientras entrada < 0 O 10 < entrada Hacer
			Escribir "Ingrese nota " i ": "
			Leer entrada
		FinMientras
		nota[i] <- entrada
		suma <- suma + entrada
		Si entrada > max Entonces
			max = entrada
		FinSi
		Si entrada < min Entonces
			min = entrada
		FinSi
		entrada = -1
	FinPara
	
	Para i Desde 1 Hasta 5 Hacer
		Escribir "Nota " i ": " nota[i]
	FinPara
	Escribir "Promedio: " suma / 5
	Escribir "Máximo: " max
	Escribir "Mínimo: " min
FinAlgoritmo
