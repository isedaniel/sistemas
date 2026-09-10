Algoritmo estudiantes
	Definir cedula Como Entero
	Dimension cedula(3)
	Definir nombre Como Caracter
	Dimension nombre(3)
	
	Para i Desde 1 Hasta 3 Hacer
		Escribir "ingrese cédula ", i
		Leer cedula(i)
		Escribir "ingrese nombre ", i
		Leer nombre(i)
	FinPara
	
	Escribir "ingrese cédula a buscar: "
	Leer buscada
	
	Para i Desde 1 Hasta 3 Hacer
		Si cedula[i] == buscada Entonces
			Escribir nombre[i]
		FinSi
	FinPara
FinAlgoritmo
