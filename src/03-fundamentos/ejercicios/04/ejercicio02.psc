Funcion promedio <- devolverMedia(vector)
	suma <- 0
	elementos <- 0
	Para Cada elemento De vector Hacer
		suma <- suma + elemento
		elementos <- elementos + 1
	FinPara
	promedio <- suma / elementos
FinFuncion


Algoritmo ejercicio02
	Dimensionar nums[10]
	Para Cada num De nums Hacer
		num <- azar(10) + 1
		Escribir num
	FinPara
	Escribir "Promedio: " devolverMedia(nums)
FinAlgoritmo
