// PROGRAMACIÓN I
// PROF. ERASO
// TRABAJO PRÁCTICO Nro 4
// EJERCICIO 1
// ALUMNOS
// - AGUILAR, MATÍAS
// - GONZÁLEZ DEL SOLAR, FRANCISCO

//
//1. Desarrollar un algoritmo que permita almacenar en un arreglo los cien
//	primeros números pares.
//	Luego recorrer el arreglo y mostrar los números que contiene el arreglo.
//

Algoritmo numeros_pares

	Dimension pares[100]
	Definir valor_par como Entero
	
	valor_par = 2
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		pares[i] = valor_par		
		Escribir "El número " pares[i] " está en la posición " i " del arreglo."
		
		valor_par = valor_par + 2	
	Fin Para
	
	
FinAlgoritmo
