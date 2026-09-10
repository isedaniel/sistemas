Funcion d <- disc(a, b, c) 
	d <- b*b - 4*a*c
FinFuncion

Funcion r <- raiz_1(a, b, c)
	r <- (-b + raiz(disc(a,b,c)))/(2*a)
FinFuncion

Funcion r <- raiz_2(a, b, c)
	r <- (-b - raiz(disc(a,b,c)))/(2*a)
FinFuncion

SubAlgoritmo resolvente(a, b, c)
	Si (disc(a, b, c) >= 0) Entonces
		Escribir "Las raíces son " raiz_1(a, b, c), " y " raiz_2(a, b, c)
	SiNo
		Escribir "Las raíces no pertenecen a R"
	FinSi
FinSubAlgoritmo

Algoritmo ejercicio03
	resolvente(1, -1, 3)
FinAlgoritmo
