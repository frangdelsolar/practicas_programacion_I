// PROGRAMACIÓN I
// TRABAJO PRÁCTICO Nro 3
// EJERCICIO 2 - Mayor y menor
// AUTOR: Lic. Francisco Javier GONZÁLEZ DEL SOLAR

Algoritmo mayor_y_menor
	
	Definir iterator, random, min, max Como Entero
	
	Escribir "Encontrar mayor y menor"
	
	min = 1001
	max = -1
	Para iterator<-1 Hasta 10 Con Paso 1 Hacer
		random = Aleatorio(0, 1000)
		Si (random < min) Entonces
			min = random
		FinSi
		Si (random > max) Entonces
			max = random
		FinSi
		
		Escribir "(" iterator ") " random
	Fin Para
	
	Escribir "El mayor es " max
	Escribir "El menor es " min
	
FinAlgoritmo
