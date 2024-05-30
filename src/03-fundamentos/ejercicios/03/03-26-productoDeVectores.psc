Algoritmo productoDeVectores
	Dimensionar vector1[10], vector2[10], producto[10]
	Definir vector1, vector2, producto Como Entero
	Para i Desde 1 Hasta 10 Hacer
		Escribir "Defina el valor " i " para el vector 1"
		Leer vector1[i]
		Escribir "Defina el valor " i " para el vector 2"
		Leer vector2[i]
		producto[i] <- vector1[i] * vector2[i]
	FinPara
	Para i Desde 1 Hasta 10 Hacer
		Escribir "El producto en la posición " i " es: " producto[i]
	FinPara
FinAlgoritmo
