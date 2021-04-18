// PROGRAMACIÓN I
// TRABAJO PRÁCTICO Nro 3
// EJERCICIO 1 - Tablas de multiplicar
// AUTOR: Lic. Francisco Javier GONZÁLEZ DEL SOLAR


Algoritmo tablasDeMultiplicar
	
	Definir multiplicando, multiplicador Como Entero
	
	Para multiplicando<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Tabla del ' multiplicando
		Escribir '-------------------------------'
		Para multiplicador<-1 Hasta 10 Con Paso 1 Hacer
			resultado = multiplicando * multiplicador
			Escribir multiplicando ' * ' multiplicador ' = ' resultado
		Fin Para
		Escribir '///////////////////////////////'
	Fin Para
	
	
FinAlgoritmo
