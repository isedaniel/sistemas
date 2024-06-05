Funcion n <- Ingresar(mensaje, i)
	Imprimir mensaje, i, ": "
	Leer n
FinFuncion

Funcion m <- Medio(px, py)
	xm <- ConvertirATexto((px[1] + px[2]) / 2)
	ym <- ConvertirATexto((py[1] + py[2]) / 2)
	m <- "(" + xm + "," + ym + ")"
FinFuncion

Algoritmo ejercicio11
	Dimensionar px[2], py[2]
	
	Para i Desde 1 Hasta 2 Hacer
		px[i] <- Ingresar("Ingrese punto x", i)
		py[i] <- Ingresar("Ingrese punto y", i)
	FinPara
	
	Imprimir "El punto medio es " Medio(px, py)
	
FinAlgoritmo
