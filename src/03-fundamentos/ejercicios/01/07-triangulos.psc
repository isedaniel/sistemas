Funcion l <- leerLado(n)
	Escribir "Introducir el lado " n " de un tri�ngulo"
	Leer l
FinFuncion

Algoritmo triangulos
	l1 = leerLado(1)
	l2 = leerLado(2)
	l3 = leerLado(3)
	Si (l1 == l2 & l2 == l3)
		Escribir "Equil�tero"
	FinSi
	Si (l1 == l2 | l2 == l3 | l3 == l1)
		Escribir "Is�celes"
	SiNo
		Escribir "Rect�ngulo"
	FinSi
FinAlgoritmo
