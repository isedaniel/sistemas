Funcion max <- devolverMaximo(a, b) 
	si a > b Entonces
		max <- a
	SiNo
		max <- b
	FinSi
FinFuncion

Algoritmo ejercicio01
	Para i Desde 1 Hasta 10 Hacer
		a <- azar(11)
		b <- azar(11)
		Escribir a " " b " max: " devolverMaximo(a,b)
	FinPara
FinAlgoritmo
