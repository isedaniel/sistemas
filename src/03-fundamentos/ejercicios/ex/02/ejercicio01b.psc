Funcion v <- max_min(valor1, valor2, operacion)
	operacion <- Mayusculas(operacion)
	Segun operacion Hacer
		Caso "MAX":
			Si valor1 > valor2 Entonces
				v <- valor1
			SiNo
				v <- valor2
			FinSi
		Caso "MIN":
			Si valor1 < valor2 Entonces
				v <- valor1
			SiNo
				v <- valor2
			FinSi
	FinSegun
FinFuncion

Algoritmo ejercicio01b
	Imprimir "Ingrese valor 1"
	Leer valor1
	Imprimir "Ingrese valor 2"
	Leer valor2
	Imprimir "Ingrese MAX o MIN"
	Leer operacion
	Imprimir max_min(valor1, valor2, operacion)
FinAlgoritmo
