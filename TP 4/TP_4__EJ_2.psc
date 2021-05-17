// PROGRAMACI�N I
// PROF. ERASO
// TRABAJO PR�CTICO Nro 4
// EJERCICIO 2
// ALUMNOS
// - AGUILAR, MAT�AS
// - GONZ�LEZ DEL SOLAR, FRANCISCO

//
// 2. Desarrollar un algoritmo que llene un arreglo con 20 n�meros de forma
//	  aleatoria entre 0 y 100 . Luego busque en el arreglo, un n�mero generado
//    de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El n�mero a
//	  buscar, b)- El arreglo, c)- Si encontr� el n�mero, la posici�n donde fue
//	  hallado, o d)- Si no encontr� el n�mero.
//

Algoritmo encontrar_numero
	
	Definir encontrar, indice_encontrado como Entero
	Definir encontrado Como Logico
	Dimension aleatorios[20]	
	
	// Inicializaci�n de variables
	encontrar = Aleatorio(0, 10)
	encontrado = Falso

	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		aleatorios[i] = Aleatorio(0, 10)
	Fin Para
	
	// Salida
	// a)
	Escribir "El n�mero a buscar es el " encontrar
	
	// b) 
	Escribir "N�meros aleatorios:"
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		Escribir aleatorios[i] ", " Sin Saltar
		
		Si aleatorios[i] == encontrar Entonces
			indice_encontrado = i
			encontrado = Verdadero
		FinSi
		
	Fin Para
	Escribir ""
	
	// c) y d)
	Si encontrado == Verdadero Entonces
		Escribir "�l n�mero " encontrar " se halla en la posici�n " indice_encontrado
	SiNo
		Escribir "�l n�mero " encontrar " no se halla la lista de n�meros."
	FinSi	
	
FinAlgoritmo
