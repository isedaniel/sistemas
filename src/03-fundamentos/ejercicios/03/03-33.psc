Algoritmo ejercicio33
	max <- 5
	Dimensionar nombreAlumnos[max], edadAlumnos[max]
	Definir nombre Como Caracter
	Definir edad Como Entero
	edadMax <- 0
	
	i <- 1
	Mientras (nombre <> "*") y i <= max Hacer
		Imprimir "Ingrese nombre: "
		Leer nombre
		nombreAlumnos[i] <- nombre
		
		Si nombre <> "*" Entonces
			Imprimir "Ingrese edad: "
			Leer edad
			edadAlumnos[i] <- edad
			Si edad > edadMax Entonces
				edadMax <- edad
			FinSi
		FinSi
		
		i <- i +1
	FinMientras
	
	Imprimir "Alumnos mayores de edad"	
	Para j Desde 1 Hasta i - 1 Hacer
		Si edadAlumnos[j] >= 18 Entonces
			Imprimir nombreAlumnos[j]
		FinSi
	FinPara
	
	Imprimir "Edad máxima: ", edadMax
	Imprimir "Alumnos de esa edad:"
	Para j Desde 1 Hasta i - 1 Hacer
		Si edadAlumnos[j] = edadMax Entonces
			Imprimir nombreAlumnos[j]
		FinSi
	FinPara
FinAlgoritmo
