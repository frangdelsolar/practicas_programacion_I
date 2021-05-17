// PROGRAMACIÓN I
// PROF. ERASO
// TRABAJO PRÁCTICO Nro 4
// EJERCICIO 4: Generar contraseña
// ALUMNOS
// - AGUILAR, MATÍAS
// - GONZÁLEZ DEL SOLAR, FRANCISCO

Algoritmo keyGen
	
	Dimension digitos[8]	
	Definir keyword Como Caracter
	
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		digitos[i] = Aleatorio(0, 9)
	Fin Para
	
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		Si i == 0
			keyword =  convertirATexto(digitos[i])			
		SiNo		
			keyword = concatenar(keyword, convertirATexto(digitos[i]))
		FinSi
	Fin Para	
	
	Escribir "*** Key Generator ***"
	Escribir "Su contraseña es: " keyword
	
FinAlgoritmo
