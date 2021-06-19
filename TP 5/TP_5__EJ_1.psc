// PROGRAMACIÓN I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 5
// EJERCICIO 1: PAR - IMPAR
// AUTOR: LIC. FRANCISCO GONZÁLEZ DEL SOLAR

	
Funcion verificarParImpar (numComprobar)
	Escribir "Verificando el número " numComprobar
	Si (numComprobar % 2 == 0)
		Escribir "El número " numComprobar " es par."
	SiNo
		Escribir "El número " numComprobar " es impar."
	FinSi
FinFuncion

Algoritmo comprobarParImpar
	
	Definir numeroPar, numeroImpar Como Entero
	
	numeroPar = 48
	numeroImpar = 101
	
	verificarParImpar(numeroPar)
	verificarParImpar(numeroImpar)
	
FinAlgoritmo
