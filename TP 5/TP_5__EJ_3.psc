// PROGRAMACIÓN I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 5
// EJERCICIO 3: PROMEDIO DE NOTAS
// AUTOR: LIC. FRANCISCO GONZÁLEZ DEL SOLAR

Funcion promedioNotas <- calcularPromedio(totalAlumnos, notas)
	Definir promedioNotas Como Real
	promedioNotas = 0
	Para i<-0 Hasta totalAlumnos-1 Con Paso 1 Hacer
		promedioNotas = promedioNotas + notas[i]
	Fin Para	
	
	promedioNotas = promedioNotas / totalAlumnos
FinFuncion

Funcion ingresarNotas(totalAlumnos, alumnos, notas)
	
	Para i<-0 Hasta totalAlumnos-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del alumno "
		Leer alumnos[i]
		Escribir "Ingrese la nota del alumno " alumnos[i]
		Leer notas[i]
	Fin Para
	
FinFuncion

Funcion mostrarAlumnos(totalAlumnos, alumnos, notas)
	Escribir "/////      ALUMNOS Y NOTAS      /////"
	Para i<-0 Hasta totalAlumnos-1 Con Paso 1 Hacer
		Escribir i+1 ". " alumnos[i] " -> " notas[i]
	Fin Para
	
FinFuncion


Algoritmo promedioAlumnos
	Definir cantidadAlumnos Como Entero
	cantidadAlumnos = 3
	
	Dimension alumnosArr[cantidadAlumnos]
	Dimension notasArr[cantidadAlumnos]
	Definir promedioNotas Como Real
	
	ingresarNotas(cantidadAlumnos, alumnosArr, notasArr)
	mostrarAlumnos(cantidadAlumnos, alumnosArr, notasArr)
	promedioNotas = calcularPromedio(cantidadAlumnos, notasArr)
	
	Escribir "El promedio de las notas ingresadas es " promedioNotas
	
FinAlgoritmo
