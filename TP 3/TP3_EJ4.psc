// PROGRAMACI�N I
// TRABAJO PR�CTICO Nro 3
// EJERCICIO 4 - Calculadora
// AUTOR: Lic. Francisco Javier GONZ�LEZ DEL SOLAR

Algoritmo calculadora
	
	Definir menuChoice Como Entero
	Definir operando1, operando2, resultado Como Real
	Definir continuar Como Caracter
	
	// Mostrar men� hasta que se seleccione una opci�n correcta
	Repetir	
		Escribir "*************************"
		Escribir "*                       *"
		Escribir "*      Calculadora      *"
		Escribir "*                       *"
		Escribir "* Seleccionar operaci�n *"
		Escribir "*                       *"
		Escribir "* 1. Suma               *"
		Escribir "* 2. Resta              *"
		Escribir "* 3. Multiplicaci�n     *"
		Escribir "* 4. Divisi�n           *"
		Escribir "* 5. Potencia           *"
		Escribir "* 6. Salir              *"
		Escribir "*************************"
		Leer menuChoice

	
		// Si la opci�n es 6 saltar al final del algoritmo
		Si (menuChoice != 6) Entonces	
				
			Segun menuChoice Hacer
				caso 1:
					Escribir "Usted ha seleccionado SUMAR"
					Escribir "Ingrese el primer sumando"
					Leer operando1
					Escribir "Ingrese el segundo sumando"
					Leer operando2
					resultado <- operando1 + operando2
					Escribir operando1 " + " operando2 " = " resultado
					
				caso 2:
					Escribir "Usted ha seleccionado RESTAR"
					Escribir "Ingrese el minuendo"
					Leer operando1
					Escribir "Ingrese el sustraendo"
					Leer operando2
					resultado <- operando1 - operando2
					Escribir operando1 " - " operando2 " = " resultado
					
				caso 3:
					Escribir "Usted ha seleccionado MULTIPLICAR"
					Escribir "Ingrese el multiplicando"
					Leer operando1
					Escribir "Ingrese el multiplicador"
					Leer operando2
					resultado <- operando1 * operando2
					Escribir operando1 " * " operando2 " = " resultado
					
				caso 4:
					Escribir "Usted ha seleccionado DIVIDIR"
					Escribir "Ingrese el dividendo"
					Leer operando1				
					Repetir 
						Escribir "Ingrese el divisor"
						Leer operando2
						Si operando2 = 0 Entonces
							Escribir "No se puede dividir por 0"
						FinSi
					Hasta Que (operando2 <> 0)
					resultado <- operando1 / operando2
					Escribir operando1 " / " operando2 " = " resultado
					
				caso 5:
					Escribir "Usted ha seleccionado POTENCIA"
					Escribir "Ingrese la base"
					Leer operando1				
					Escribir "Ingrese el exponente"
					Leer operando2
					resultado <- operando1 ^ operando2
					Escribir operando1 " ^ " operando2 " = " resultado				
					
			FinSegun
			
			Repetir
				Escribir "�Desea realizar otra operaci�n? S� (s) / No (n)"
				Leer continuar
			Hasta Que (continuar == 's' o continuar == 'n')
			
			Si continuar == 'n' Entonces
				menuChoice <- 6
			FinSi
		
		FinSi		
	
	Hasta Que (menuChoice < 1 o menuChoice >= 6)
	
	Escribir "Gracias por utilizar la calculadora."

		
	
FinAlgoritmo
