Algoritmo operarOpciones
	Escribir "Introducir un n�mero"
	Leer n1
	Escribir "Introducir otro n�mero"
	Leer n2
	Escribir "Introducir operador (+, -, *)"
	Leer op

	Si (op == "+")
		Escribir n1 "+" n2 "=" n1 + n2
	FinSi
	Si (op == "-")
		Escribir n1 "-" n2 "=" n1 - n2
	FinSi
	Si (op == "*")
		Escribir n1 "*" n2 "=" n1 * n2
	FinSi
	Si op <> "+" & op <> "-" & op <> "*"
		Escribir "Operador invalido"
	FinSi
FinAlgoritmo
