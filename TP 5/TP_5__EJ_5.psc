// PROGRAMACI�N I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PR�CTICO Nro 5
// EJERCICIO 5: CALCULAR PROMEDIO
// AUTOR: LIC. FRANCISCO GONZ�LEZ DEL SOLAR


Funcion promedio <- media2(real1, real2)
	Definir promedio Como Real
	promedio = (real1 + real2) / 2
FinFuncion

Funcion promedio <- ingresarValores()
	
	Definir num1, num2, promedio Como Real
	
	Escribir "Ingrese el primer n�mero"
	Leer num1
	
	Escribir "Ingrese el segundo n�mero"
	Leer num2
	
	promedio = media2(num1, num2)	
	
FinFuncion


Algoritmo calcPromedio
	Definir promedio Como Real
	
	promedio = ingresarValores()	
	Escribir "El promedio de los n�meros ingresados es igual a " promedio 
	
FinAlgoritmo
