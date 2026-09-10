Funcion i <- Ingresar(variable)
	Imprimir "Ingrese ", variable, ": "
	Leer i
FinFuncion

Funcion SalarioNeto(salario, horas)
	Imprimir "Salario neto: ", salario * horas
FinFuncion

Algoritmo ejercicio06
	salario <- Ingresar("salario por hora")
	horas <- Ingresar("horas trabajadas")
	SalarioNeto(salario, horas)
FinAlgoritmo
