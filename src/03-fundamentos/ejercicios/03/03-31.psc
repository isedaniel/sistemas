Algoritmo ejercicio31
	Dimensionar nums[10]
	Para Cada num de nums Hacer
		num <- azar(10+1)
	FinPara
	
	Para i Desde 1 Hasta 9 Hacer
		Para j Desde i+1 Hasta 10 Hacer
			Si nums[i] > nums[j] Entonces
				temp <- nums[i]
				nums[i] <- nums[j]
				nums[j] <- temp
			FinSi
		FinPara
	FinPara
	
	Para Cada num de nums Hacer
		Escribir num
	FinPara
FinAlgoritmo
