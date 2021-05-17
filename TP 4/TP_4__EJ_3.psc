// PROGRAMACIÓN I
// PROF. ERASO
// TRABAJO PRÁCTICO Nro 4
// EJERCICIO 3: Encontrar primos
// ALUMNOS
// - AGUILAR, MATÍAS
// - GONZÁLEZ DEL SOLAR, FRANCISCO

Algoritmo encontrar_numero
		
	Definir cantidad_primos, indice_primo Como Entero
	cantidad_primos = 100
	indice_primo = 0
	Dimension primos[cantidad_primos]	
	
	Definir contador_multiplos Como Entero
	
	Para i <- 1 Hasta 100 Con Paso 1 Hacer

		contador_multiplos = 0
		Para j <- 1 Hasta i		
			Si i % j == 0 Entonces
				contador_multiplos = contador_multiplos + 1
			FinSi			
		FinPara
		
		Si (i == 1 O contador_multiplos == 2)
			// Escribir i " es un número primo."
			primos[indice_primo] = i
			indice_primo = indice_primo + 1			
		FinSi
		
	Fin Para
	
	Para j <- 0 Hasta 99 Con Paso 1 Hacer	
		Si primos[j] <> 0 Entonces
			Escribir "El número primo " primos[j] " se encuentra en la posición " j		
		FinSi
	Fin Para	

	
FinAlgoritmo

