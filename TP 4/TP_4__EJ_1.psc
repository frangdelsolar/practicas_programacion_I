// PROGRAMACI�N I
// PROF. ERASO
// TRABAJO PR�CTICO Nro 4
// EJERCICIO 1
// ALUMNOS
// - AGUILAR, MAT�AS
// - GONZ�LEZ DEL SOLAR, FRANCISCO

//
//1. Desarrollar un algoritmo que permita almacenar en un arreglo los cien
//	primeros n�meros pares.
//	Luego recorrer el arreglo y mostrar los n�meros que contiene el arreglo.
//

Algoritmo numeros_pares

	Dimension pares[100]
	Definir valor_par como Entero
	
	valor_par = 2
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		pares[i] = valor_par		
		Escribir "El n�mero " pares[i] " est� en la posici�n " i " del arreglo."
		
		valor_par = valor_par + 2	
	Fin Para
	
	
FinAlgoritmo
