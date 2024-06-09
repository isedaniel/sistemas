Funcion resultado <- Calcular(valor1, valor2, operacion)
	Si operacion = "+" Entonces
		resultado <- valor1 + valor2
	FinSi
	Si operacion = "-" Entonces
		resultado <- valor1 - valor2
	FinSi
	Si operacion = "*" Entonces
		resultado <- valor1 * valor2
	FinSi
	Si operacion = "/" Entonces
		Si valor2 <> 0 Entonces
			resultado <- valor1 / valor2
		SiNo
			resultado <- DividirPorCero(0)
		FinSi
	FinSi
FinFuncion

Funcion s <- DividirPorCero(cero)
	s <- "No se puede dividir por cero."
FinFuncion

Funcion i <- Ingresar(mensaje)
	Imprimir mensaje
	Leer i
FinFuncion

Algoritmo ejercicio01
	Definir valor1, valor2 Como Real
	Definir operacion Como Caracter
	valor1 <- Ingresar("Ingrese valor 1")
	valor2 <- Ingresar("Ingrese valor 2")
	operacion <- Ingresar("Ingrese operación (+, -, *, /)")
	Imprimir Calcular(valor1, valor2, operacion)
FinAlgoritmo
