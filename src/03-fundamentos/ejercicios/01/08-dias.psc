Funcion b <- bisiesto(a�o)
	div4 = a�o % 4 == 0
	div100 = a�o % 100 == 0
	div400 = a�o % 400 = 0
	b = div4 & (!div100 | div400)
FinFuncion

Funcion p <- esPar(n)
	p = n % 2 == 0
FinFuncion

Algoritmo dias
	Escribir "Introducir a�o"
	Leer a�o
		
	Escribir "Introducir mes"
	Leer mes
	Si (!esPar(mes) & mes < 8) | (esPar(mes) & 7 < mes)
		Escribir 31
	FinSi
	Si (mes == 4 | mes == 6) | (!esPar(mes) & 7 < mes) 
		Escribir 30
	FinSi
	Si mes == 2
		Si bisiesto(a�o)
			Escribir 29
		SiNo
			Escribir 28
		FinSi		
	FinSi
FinAlgoritmo
