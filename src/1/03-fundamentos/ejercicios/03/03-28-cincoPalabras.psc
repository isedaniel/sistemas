Algoritmo cincoPalabras
	Definir  palabras como Cadena
	Dimensionar palabras[5]
	Para i desde 1 hasta 5 Hacer
		Escribir "Ingresar palabra " i ": "
		Leer palabras[i]
	FinPara
	
	Definir inverso como Cadena
	Dimensionar inverso[5]
	Para i desde 1 hasta 5 Hacer
		inverso[6-i] <- palabras[i]
	FinPara
	
	Para Cada palabra de inverso Hacer
		Escribir palabra
	FinPara
FinAlgoritmo
