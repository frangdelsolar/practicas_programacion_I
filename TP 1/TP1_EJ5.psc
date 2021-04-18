// PROGRAMACIÓN I
// TRABAJO PRÁCTICO Nro 1
// EJERCICIO 5
// AUTOR: Lic. Francisco Javier GONZÁLEZ DEL SOLAR


Algoritmo calc_root
	//Declaración de variables
	Definir index, radicand, root como Real
	
	// Entrada de datos
	Escribir "Escribir el índice de la raíz: "
	Leer index
	
	Escribir "Escribir el radicando: "
	Leer radicand
	
	// Procesamiento de datos
	root = radicand ^ (1 / index)
	
	// Salida de datos
	Escribir "La raíz " index " de " radicand " es " root		
	
FinAlgoritmo
