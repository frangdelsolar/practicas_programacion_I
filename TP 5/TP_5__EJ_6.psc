// 6.	Escribe una función que reciba un número como parámetro y 
// devuelva el número que se obtiene al invertir el orden de los dígitos del 
//número original. Por ejemplo, si la función recibe el número 356 devolverá el número 653.

// PROGRAMACIÓN II
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 5
// EJERCICIO 6: INVERTIR NUMERO
// AUTOR: LIC. FRANCISCO GONZÁLEZ DEL SOLAR

Funcion valorInvertido <- invertirVariable(num)
	Definir auxiliar como Entero
	
	auxiliar = num
	valorInvertido = 0
	multiplicador = 10
	
	Repetir
		resto = auxiliar % 10 		
		valorInvertido = valorInvertido * multiplicador + resto	
		auxiliar = trunc(auxiliar/10)		
	Hasta Que auxiliar == 0	
FinFuncion


Algoritmo inversorVariable
	Definir numeroInvertir, numeroInvertido Como Entero
	
	Escribir "Ingrese el número que desea invertir"
	Leer numeroInvertir
	
	numeroInvertido = invertirVariable(numeroInvertir)
	
	Escribir "Su número " numeroInvertir " escrito al revés queda " numeroInvertido
	
FinAlgoritmo
