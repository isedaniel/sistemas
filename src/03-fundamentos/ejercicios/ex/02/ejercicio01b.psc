Funci�n v <- max_min(valor1,valor2,operacion)
	operacion <- Mayusculas(operacion)
	Seg�n operacion Hacer
		'MAX':
			Si valor1>valor2 Entonces
				v <- valor1
			SiNo
				v <- valor2
			FinSi
		'MIN':
			Si valor1<valor2 Entonces
				v <- valor1
			SiNo
				v <- valor2
			FinSi
	FinSeg�n
FinFunci�n

Algoritmo ejercicio01b
	Escribir 'Ingrese valor 1'
	Leer valor1
	Escribir 'Ingrese valor 2'
	Leer valor2
	Escribir 'Ingrese MAX o MIN'
	Leer operacion
	Escribir max_min(valor1,valor2,operacion)
FinAlgoritmo
