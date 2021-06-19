// PROGRAMACIÓN I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 5
// EJERCICIO 5: CALCULAR PROMEDIO
// AUTOR: LIC. FRANCISCO GONZÁLEZ DEL SOLAR


Funcion promedio <- media2(real1, real2)
	Definir promedio Como Real
	promedio = (real1 + real2) / 2
FinFuncion

Funcion promedio <- ingresarValores()
	
	Definir num1, num2, promedio Como Real
	
	Escribir "Ingrese el primer número"
	Leer num1
	
	Escribir "Ingrese el segundo número"
	Leer num2
	
	promedio = media2(num1, num2)	
	
FinFuncion


Algoritmo calcPromedio
	Definir promedio Como Real
	
	promedio = ingresarValores()	
	Escribir "El promedio de los números ingresados es igual a " promedio 
	
FinAlgoritmo
