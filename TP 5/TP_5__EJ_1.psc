// PROGRAMACI�N I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PR�CTICO Nro 5
// EJERCICIO 1: PAR - IMPAR
// AUTOR: LIC. FRANCISCO GONZ�LEZ DEL SOLAR

	
Funcion verificarParImpar (numComprobar)
	Escribir "Verificando el n�mero " numComprobar
	Si (numComprobar % 2 == 0)
		Escribir "El n�mero " numComprobar " es par."
	SiNo
		Escribir "El n�mero " numComprobar " es impar."
	FinSi
FinFuncion

Algoritmo comprobarParImpar
	
	Definir numeroPar, numeroImpar Como Entero
	
	numeroPar = 48
	numeroImpar = 101
	
	verificarParImpar(numeroPar)
	verificarParImpar(numeroImpar)
	
FinAlgoritmo
