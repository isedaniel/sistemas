Funcion p <- Precio(A, B, estudiante)
	Si estudiante Entonces
		p <- (A * 50) + (B * 100)
	SiNo
		p <- (A * 75) + (B * 150)
	FinSi
FinFuncion

Algoritmo ejercicio07
	estudiante <- Verdadero
	noEstudiante <- Falso
	Imprimir Precio(100, 200, estudiante)
	Imprimir Precio(100, 200, noEstudiante)
FinAlgoritmo
