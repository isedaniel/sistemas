Funcion resultado <- Calcular(valor1, valor2, operacion)
	Segun operacion Hacer
		Caso "+":
			resultado <- valor1 + valor2
		Caso "-":
			resultado <- valor1 - valor2
		Caso "*":
			resultado <- valor1 * valor2
		Caso "/":
			Si valor2 <> 0 Entonces
				resultado <- valor1 / valor2
			SiNo
				// Se hace de esta manera porque caso contrario
				// PSeInt no permite devolver tipos diferentes
				resultado <- AsignarCadena("No se puede dividir por cero.")
			FinSi
	FinSegun
FinFuncion

Funcion s <- AsignarCadena(c)
	s <- c
FinFuncion

Algoritmo ejercicio01
	Definir valor1, valor2 Como Real
	Definir operacion Como Caracter
	Imprimir "Ingrese valor1"
	Leer valor1
	Imprimir "Ingrese valor 2"
	Leer valor2
	Imprimir "Ingrese operaci�n"
	Leer operacion
	Imprimir Calcular(valor1, valor2, operacion)
FinAlgoritmo
