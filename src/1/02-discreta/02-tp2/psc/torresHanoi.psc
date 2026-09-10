Funcion hanoi(discos, inicio, auxiliar, destino)
	Si discos = 1 Entonces
		Imprimir inicio, " -> ", destino
	SiNo
		hanoi(discos - 1, inicio, destino, auxiliar)
		Imprimir inicio, " -> ", destino
		hanoi(discos - 1, auxiliar, inicio, destino)
	FinSi
FinFuncion

Algoritmo torresHanoi
	hanoi(4, "A", "B", "C")
FinAlgoritmo

