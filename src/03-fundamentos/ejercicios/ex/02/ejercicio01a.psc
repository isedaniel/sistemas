Funci�n c <- Calcular(v1,v2,operacion)
	Seg�n operacion Hacer
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
	FinSeg�n
FinFunci�n

Funci�n s <- DividirPorCero
	s <- 'No se puede dividir por cero.'
FinFunci�n

Algoritmo ejercicio01a
	Definir valor1, valor2 Como Real
	Definir operacion Como Cadena
	Escribir 'Ingrese valor 1'
	Leer valor1
	Escribir 'Ingrese valor 2'
	Leer valor2
	Escribir 'Ingrese operaci�n'
	Leer operacion
	Escribir Calcular(valor1,valor2,operacion)
FinAlgoritmo
