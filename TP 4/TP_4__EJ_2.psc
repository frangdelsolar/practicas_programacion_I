// PROGRAMACIÓN I
// PROF. ERASO
// TRABAJO PRÁCTICO Nro 4
// EJERCICIO 2
// ALUMNOS
// - AGUILAR, MATÍAS
// - GONZÁLEZ DEL SOLAR, FRANCISCO

//
// 2. Desarrollar un algoritmo que llene un arreglo con 20 números de forma
//	  aleatoria entre 0 y 100 . Luego busque en el arreglo, un número generado
//    de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El número a
//	  buscar, b)- El arreglo, c)- Si encontró el número, la posición donde fue
//	  hallado, o d)- Si no encontró el número.
//

Algoritmo encontrar_numero
	
	Definir encontrar, indice_encontrado como Entero
	Definir encontrado Como Logico
	Dimension aleatorios[20]	
	
	// Inicialización de variables
	encontrar = Aleatorio(0, 10)
	encontrado = Falso

	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		aleatorios[i] = Aleatorio(0, 10)
	Fin Para
	
	// Salida
	// a)
	Escribir "El número a buscar es el " encontrar
	
	// b) 
	Escribir "Números aleatorios:"
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
		Escribir "Él número " encontrar " se halla en la posición " indice_encontrado
	SiNo
		Escribir "Él número " encontrar " no se halla la lista de números."
	FinSi	
	
FinAlgoritmo
