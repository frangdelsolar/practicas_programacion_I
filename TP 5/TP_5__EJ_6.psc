// PROGRAMACI�N II
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PR�CTICO Nro 5
// EJERCICIO 6: INVERTIR NUMERO
// AUTOR: LIC. FRANCISCO GONZ�LEZ DEL SOLAR

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
	
	Escribir "Ingrese el n�mero que desea invertir"
	Leer numeroInvertir
	
	numeroInvertido = invertirVariable(numeroInvertir)
	
	Escribir "Su n�mero " numeroInvertir " escrito al rev�s queda " numeroInvertido
	
FinAlgoritmo
