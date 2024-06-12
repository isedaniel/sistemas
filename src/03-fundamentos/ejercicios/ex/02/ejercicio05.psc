Funcion menu
	Limpiar Pantalla
	Imprimir "Calculadora"
	Imprimir "+: sumar"
	Imprimir "-: restar"
	Imprimir "*: multiplicar"
	Imprimir "/: dividir"
	Imprimir "S: salir"
	Imprimir ""
	Imprimir "Ingrese su opción"
FinFuncion

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

Algoritmo ejercicio05
	Definir valor1, valor2 Como Real
	
	salir <- Falso
	Mientras salir = Falso Hacer
		menu
		Leer operacion
		
		Segun operacion Hacer
			Caso "s","S":
				salir <- Verdadero
			Caso "+","-","*","/":
				Imprimir "Ingrese valor 1"
				Leer valor1
				Imprimir "Ingrese valor 2"
				Leer valor2
				
				Imprimir "Resultado : " calcular(valor1, valor2, operacion)
				Imprimir ""
				Imprimir "Presione cualquier tecla para volver al menú..."
				Esperar Tecla
			De Otro Modo:
				Imprimir "Opción inválida"
				Imprimir "Presione cualquier tecla para volver al menú..."
				Esperar Tecla
		FinSegun
	FinMientras
FinAlgoritmo
