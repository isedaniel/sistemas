Funcion n <- Ingresar(i)
	Imprimir "Ingrese nota " i
	Leer n
FinFuncion

Funcion n <- Nota(p1, p2, p3)
	n <- p1 * .2 + p2 * .3 + p3 * .5
FinFuncion

Algoritmo ejercicio09
	Dimensionar notas[3]
	Para i Desde 1 Hasta 3 Hacer
		notas[i] <- Ingresar(i)
	FinPara
	
	notaFinal <- Nota(notas[1], notas[2], notas[3])
	Imprimir " Nota final " notaFinal
	
	Si notaFinal > 5 Entonces
		Imprimir "El alumno está aprobado."
	SiNo
		Imprimir "El alumno está desaprobado."
	FinSi
FinAlgoritmo
