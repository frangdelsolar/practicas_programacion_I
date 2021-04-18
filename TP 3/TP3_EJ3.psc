// PROGRAMACIÓN I
// TRABAJO PRÁCTICO Nro 3
// EJERCICIO 3 - Sumar 100
// AUTOR: Lic. Francisco Javier GONZÁLEZ DEL SOLAR

Algoritmo sumar_cien
	
	Definir menu_choice Como Entero
	Definir end_program Como Caracter
	Definir iterator, acumulador Como Entero
		
	Repetir
		Escribir "**************************************************"
		Escribir "* Calculo de la suma de los 100 primeros números *"
		Escribir "* Elegir método de cálculo:                      *"
		Escribir "* (1) Estructura PARA                            *"
		Escribir "* (2) Estructura MIENTRAS                        *"
		Escribir "* (3) Estructura REPETIR                         *"
		Escribir "* (4) SALIR                                      *"
		Escribir "**************************************************"
		Leer menu_choice
		
		acumulador <- 0
		iterator <- 0
		
		Segun menu_choice
			Caso 1: // PARA
				Escribir "Para"
				Para iterator<-1 Hasta 100 Con Paso 1 Hacer
					acumulador = acumulador + iterator				
					Escribir iterator ". Total: " acumulador
				Fin Para
				
			Caso 2: // Mientras
				Escribir "Mientras"
				Mientras iterator < 101 Hacer
					acumulador = acumulador + iterator				
					Escribir iterator ". Total: " acumulador
					iterator = iterator + 1
				Fin Mientras
				
			Caso 3: // Repetir
				Escribir "Repetir"
				Repetir
					acumulador = acumulador + iterator				
					Escribir iterator ". Total: " acumulador
					iterator = iterator + 1
				Hasta Que iterator > 100
				
				
			De Otro Modo:
				Escribir "¿Está seguro que desea salir (s)?" 
				Leer end_program
				Si (end_program == 's')
					menu_choice <- 4
				SiNo
					menu_choice <- 1
				FinSi
		FinSegun
	Hasta Que (menu_choice < 1 o menu_choice > 3)
	
	Escribir "Gracias por utilizar este programa."	
	
FinAlgoritmo
