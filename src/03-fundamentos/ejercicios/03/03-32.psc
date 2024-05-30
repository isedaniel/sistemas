Algoritmo ejercicio32
	Dimensionar meses[12], diasPorMes[12]
	meses[1] <- "Enero"
	diasPorMes[1] <- 31
	meses[2] <- "Febrero"
	diasPorMes[2] <- 28
	meses[3] <- "Marzo"
	diasPorMes[3] <- 31
	meses[4] <- "Abril"
	diasPorMes[4] <- 30
	meses[5] <- "Mayo"
	diasPorMes[5] <- 31
	meses[6] <- "Junio"
	diasPorMes[6] <- 30
	meses[7] <- "Julio"
	diasPorMes[7] <- 31
	meses[8] <- "Agosto"
	diasPorMes[8] <- 31
	meses[9] <- "Septiembre"
	diasPorMes[9] <- 30
	meses[10] <- "Octubre"
	diasPorMes[10] <- 31
	meses[11] <- "Noviembre"
	diasPorMes[11] <- 30
	meses[12] <- "Diciembre"
	diasPorMes[12] <- 31
	
	Escribir "Ingrese número de mes: "
	Leer mes
	Escribir meses[mes], " tiene " diasPorMes[mes] " días."
FinAlgoritmo
