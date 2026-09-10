Funcion neto <- Salario(horas, salarioPorHora)
	Si horas > 48 Entonces
		neto <- horas * salarioPorHora + (horas - 48) * salarioPorHora * .35
	SiNo
		neto <- horas * salarioPorHora
	FinSi
	
FinFuncion

Algoritmo ejercicio08
	horas <- 50
	salarioPorHora <- 100
	Imprimir Salario(horas, salarioPorHora)
FinAlgoritmo
