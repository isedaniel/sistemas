Algoritmo categoria
	Escribir "Introducir edad"
	Leer edad
	Si edad <= 12
		mensaje <- "menor"
	SiNo
		Si edad <= 18
			mensaje <- "cadete" 
		SiNo
			Si edad <= 26
				mensaje <- "juvenil"
			SiNo
				mensaje <- "mayor"
			FinSi
		FinSi
	FinSi
	Escribir mensaje
FinAlgoritmo
