Funcion l <- leerLado(n)
	Escribir "Introducir el lado " n " de un triángulo"
	Leer l
FinFuncion

Algoritmo triangulos
	l1 = leerLado(1)
	l2 = leerLado(2)
	l3 = leerLado(3)
	Si (l1 == l2 & l2 == l3)
		Escribir "Equilátero"
	FinSi
	Si (l1 == l2 | l2 == l3 | l3 == l1)
		Escribir "Isóceles"
	SiNo
		Escribir "Rectángulo"
	FinSi
FinAlgoritmo
