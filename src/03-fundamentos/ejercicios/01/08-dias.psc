Funcion b <- bisiesto(año)
	div4 = año % 4 == 0
	div100 = año % 100 == 0
	div400 = año % 400 = 0
	b = div4 & (!div100 | div400)
FinFuncion

Funcion p <- esPar(n)
	p = n % 2 == 0
FinFuncion

Algoritmo dias
	Escribir "Introducir año"
	Leer año
		
	Escribir "Introducir mes"
	Leer mes
	Si (!esPar(mes) & mes < 8) | (esPar(mes) & 7 < mes)
		Escribir 31
	FinSi
	Si (mes == 4 | mes == 6) | (!esPar(mes) & 7 < mes) 
		Escribir 30
	FinSi
	Si mes == 2
		Si bisiesto(año)
			Escribir 29
		SiNo
			Escribir 28
		FinSi		
	FinSi
FinAlgoritmo
