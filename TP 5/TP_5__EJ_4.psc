// PROGRAMACI�N I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PR�CTICO Nro 5
// EJERCICIO 4: INTERCAMBIAR VARIABLES
// AUTOR: LIC. FRANCISCO GONZ�LEZ DEL SOLAR

Funcion intercambiarVariables (valor1 Por Referencia, valor2 Por Referencia)
	Definir auxiliar Como Entero
	
	auxiliar = valor1
	valor1 = valor2 
	valor2 = auxiliar
	
FinFuncion

Algoritmo intercambio
	
	Definir num1, num2 Como Entero
	
	Escribir "Ingrese el primer n�mero"
	Leer num1
	
	Escribir "Ingrese el segundo n�mero"
	Leer num2
	
	Escribir "Variable num1 en este momento " num1
	Escribir "Variable num2 en este momento " num2
	
	Escribir "Intercambiando variables ..."
	
	intercambiarVariables(num1, num2)
	
	Escribir "Variable num1 en este momento " num1
	Escribir "Variable num2 en este momento " num2
	
	
FinAlgoritmo
