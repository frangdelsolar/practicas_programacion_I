// PROGRAMACIÓN I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 5
// EJERCICIO 2: N PRIMOS
// AUTOR: LIC. FRANCISCO GONZÁLEZ DEL SOLAR

Funcion esPrimo <- verificarDivisores(valorComprobar)
	
	Definir cantidadMultiplos Como Entero
	cantidadMultiplos = 0
	
	Para i<-1 Hasta valorComprobar+1 Con Paso 1 Hacer
		Si valorComprobar % i == 0
			cantidadMultiplos = cantidadMultiplos + 1
		FinSi
	Fin Para
	
	Si cantidadMultiplos = 2
		esPrimo = Verdadero
	SiNo
		esPrimo = Falso
	FinSi
FinFuncion

Funcion obtenerNumerosPrimos(valorMaximo)
	
	Definir esPrimo Como Logico
	Definir cantidadPrimos Como Entero
	
	esPrimo = Falso
	
	Escribir "Buscando números primos del 0 al " valorMaximo
	
	Para i<-1 Hasta valorMaximo Con Paso 1 Hacer
		esPrimo = verificarDivisores(i)
		Si esPrimo
			cantidadPrimos = cantidadPrimos + 1
			Escribir i "   "  Sin Saltar
		FinSi
	Fin Para
	
	Escribir ""
	Escribir "Existe un total de " cantidadPrimos " números primos entre el 0 y el "  valorMaximo
	
FinFuncion

Algoritmo obtenerPrimos
	
	Definir buscarPrimosHasta Como Entero
	
	buscarPrimosHasta = 1000
	obtenerNumerosPrimos(buscarPrimosHasta)
	
FinAlgoritmo
