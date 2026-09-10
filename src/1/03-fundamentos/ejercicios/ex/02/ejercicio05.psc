Función menu
	Limpiar Pantalla
	Escribir 'Calculadora'
	Escribir '+: sumar'
	Escribir '-: restar'
	Escribir '*: multiplicar'
	Escribir '/: dividir'
	Escribir 'S: salir'
	Escribir ''
	Escribir 'Ingrese su opción'
FinFunción

Función resultado <- calcular(valor1,valor2,operacion)
	Según operacion Hacer
		'+':
			resultado <- valor1+valor2
		'-':
			resultado <- valor1-valor2
		'*':
			resultado <- valor1*valor2
		'/':
			Si valor2<>0 Entonces
				resultado <- valor1/valor2
			SiNo
				// Se hace de esta manera porque caso contrario
				// PSeInt no permite devolver tipos diferentes
				resultado <- AsignarCadena('No se puede dividir por cero.')
			FinSi
	FinSegún
FinFunción

Función s <- AsignarCadena(c)
	s <- c
FinFunción

Algoritmo ejercicio05
	Definir valor1, valor2 Como Real
	salir <- Falso
	Mientras salir=Falso Hacer
		menu()
		Leer operacion
		Según operacion Hacer
			's', 'S':
				salir <- Verdadero
			'+', '-', '*', '/':
				Escribir 'Ingrese valor 1'
				Leer valor1
				Escribir 'Ingrese valor 2'
				Leer valor2
				Escribir 'Resultado : ', calcular(valor1,valor2,operacion)
				Escribir ''
				Escribir 'Presione cualquier tecla para volver al menú...'
				Esperar Tecla
			De Otro Modo:
				Escribir 'Opción inválida'
				Escribir 'Presione cualquier tecla para volver al menú...'
				Esperar Tecla
		FinSegún
	FinMientras
FinAlgoritmo
