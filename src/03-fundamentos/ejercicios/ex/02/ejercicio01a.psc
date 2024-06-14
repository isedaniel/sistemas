Función c <- Calcular(v1,v2,operacion)
	Según operacion Hacer
		'+':
			c <- v1+v2
		'-':
			c <- v1-v2
		'*':
			c <- v1*v2
		'/':
			Si v2<>0 Entonces
				c <- v1/v2
			SiNo
				c <- DividirPorCero
			FinSi
	FinSegún
FinFunción

Función s <- DividirPorCero
	s <- 'No se puede dividir por cero.'
FinFunción

Algoritmo ejercicio01a
	Definir valor1, valor2 Como Real
	Definir operacion Como Cadena
	Escribir 'Ingrese valor 1'
	Leer valor1
	Escribir 'Ingrese valor 2'
	Leer valor2
	Escribir 'Ingrese operación'
	Leer operacion
	Escribir Calcular(valor1,valor2,operacion)
FinAlgoritmo
