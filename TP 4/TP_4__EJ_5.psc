// PROGRAMACIÓN I
// PROF. ERASO y PROF. ONTIVEROS
// TRABAJO PRÁCTICO Nro 4
// EJERCICIO 5: Tateti
// ALUMNOS
// - AGUILAR, MATÍAS
// - GONZÁLEZ DEL SOLAR, FRANCISCO

Funcion modalidad <- elegir_modalidad()
	// Solicita al usuario que defina la modalidad de juego
	
	Definir modalidad como Entero
	
	Escribir "*******************************"
	Escribir "*            TATETI           *"
	Escribir "*******************************"
	Escribir "¿Qué modalidad de juego desea?"
	Repetir
		
		Escribir "[1] Dos jugadores"
		Escribir "[2] Jugador contra la máquina"
		Escribir "[3] Máquina contra máquina"
		Leer modalidad
		
	Hasta Que ((modalidad > 0) y (modalidad < 4)) 
	
Fin Funcion


Funcion crear_tablero ( tablero )
	// Crea la matriz tablero y la inicializa en 0
	Para fila <- 0 Hasta 2 Con Paso 1 Hacer
		Para columna <- 0 Hasta 2 Con Paso 1 Hacer
			tablero[fila, columna] = 0
		Fin Para
	Fin Para
Fin Funcion


Funcion mostrar_tablero (tablero)
	// Muestra en pantalla el estado del juego
	Definir signo Como Caracter
	Borrar Pantalla
	Escribir "_______________________"
	Escribir "    /  0  /  1  /  2  /"
	Escribir "_______________________"
	Para fila <- 0 Hasta 2 Con Paso 1 Hacer
		Escribir " " fila "  /"sin saltar
		Para columna <- 0 Hasta 2 Con Paso 1 Hacer
			signo = " "
			Si tablero[fila, columna] == 1 Entonces
				signo = "X"
			SiNo
				Si tablero[fila, columna] == 2 Entonces
					signo = "O"
				FinSi
			FinSi
			
			Escribir  "  " signo "  |" sin saltar
		Fin Para
		Escribir ""
		Escribir "_______________________"
	Fin Para
Fin Funcion


Funcion get_user_input(jugador, posicion Por Referencia)
	// Recibe del usuario la posición en la que desea jugar
	
	Definir fila, columna como Entero
	Escribir "Es el turno del jugador " jugador
	
	Repetir
		Escribir "Ingrese la fila en la que desea jugar (0 a 2)"
		Leer fila
	Hasta Que fila >= 0 y fila <= 2
	
	Repetir 
		Escribir "Ingrese la columna donde desea jugar (0 a 2)"
		Leer columna
	Hasta Que columna >= 0 y columna <= 2
	
	posicion[0] = fila
	posicion[1] = columna
	
Fin Funcion


Funcion get_computer_input(jugador, posicion Por Referencia)
	// Aleatoriza la posición en la que juega la computadora
	
	Escribir "Pensando jugada para el jugador " jugador
	
	posicion[0] = Aleatorio(0, 2)
	posicion[1] = Aleatorio(0, 2)
	
Fin Funcion


Funcion get_input(modalidad, jugador, posicion Por Referencia, tablero Por Referencia)
	// Según la modalidad de juego, decide cómo debe ser 
	// obtenido el valor posición
	Repetir
		Segun modalidad
			Caso 1:
				get_user_input(jugador, posicion)
				
			Caso 2:
				Si jugador == 1 Entonces
					get_user_input(jugador, posicion)
				SiNo
					get_computer_input(jugador, posicion)
				FinSi
				
			Caso 3:
				get_computer_input(jugador, posicion)					
		Fin Segun
		
		jugada_valida = validar_input(posicion, tablero, jugador)
	Hasta Que jugada_valida == Verdadero 
Fin Funcion


Funcion jugada_valida <- validar_input(posicion, tablero, jugador)
	// Verifica que la posición seleccionada por el jugador
	// sea un movimiento válido
	
	Definir fila, columna como Entero
	Definir jugada_valida como Logico
	
	fila = posicion[0]
	columna = posicion[1]
	
	Si tablero[fila, columna] == 0 Entonces
		tablero[fila, columna] = jugador
		jugada_valida = Verdadero
	SiNo
		Si tablero[fila, columna] <> 0 Entonces
			jugada_valida = Falso
		Fin Si
	Fin Si
	
	Si (jugada_valida == Falso) Entonces
		Escribir "Jugada no permitida, la posición ya está ocupada. Por favor, intente nuevamente"
	FIn Si
	
Fin Funcion

Funcion resultado <- revisar_estado (tablero Por Referencia, movimientos)
	// Verifica el estado del juego: empate, ganador o continuar
	
	Definir resultado Como Entero
	resultado = 0
	
	// Revisar diagonales
	Si (tablero[0, 0] == tablero[1, 1]) y (tablero[0, 0] == tablero[2, 2]) Entonces
		resultado = tablero[0, 0]
	FinSi
	
	Si (resultado == 0) Entonces	
		Si (tablero[2, 0] == tablero[1, 1]) y (tablero[2, 0] == tablero[0, 2]) Entonces
			resultado = tablero[2, 0]
		FinSi
	FinSi
	
	// Revisar horizontales		
	Para fila <- 0 Hasta 2 Con Paso 1 Hacer
		Si (resultado == 0) Entonces
			Si (tablero[fila, 0] == tablero[fila, 1]) y (tablero[fila, 0] == tablero[fila, 2]) Entonces
				resultado = tablero[fila, 0]
			FinSi
		FinSi
	Fin Para
	
	// Revisar horizontales
	Para columna <- 0 Hasta 2 Con Paso 1 Hacer
		Si (resultado == 0) Entonces
			Si (tablero[0, columna] == tablero[1, columna]) y (tablero[0, columna] == tablero[2, columna]) Entonces
				resultado = tablero[0, columna]
			FinSi
		FinSi
	Fin Para
	
	Si movimientos == 9  y resultado == 0 Entonces
		resultado = 3
	FinSi
	
Fin Funcion

Funcion cambiar_jugador(jugador Por Referencia)
	// Modifica el valor jugador 1 o 2
	Si jugador == 1 Entonces
		jugador = 2
	SiNo
		jugador = 1 
	Fin Si	
Fin Funcion

Algoritmo TaTeTi
	
	Dimension tablero[3, 3], posicion[2]
	Definir jugador, modalidad, movimientos como Entero
	Definir jugada_valida, finalizar_juego como Logico
	
	jugador = 1
	finalizar_juego = Falso
	movimientos = 1
	
	crear_tablero(tablero)	
	modalidad = elegir_modalidad()
	mostrar_tablero(tablero)
	
	Repetir 		
		get_input(modalidad, jugador, posicion, tablero)
		mostrar_tablero(tablero)		
		resultado = revisar_estado(tablero, movimientos)
		
		Segun resultado
			Caso 0:
				movimientos = movimientos + 1
				cambiar_jugador(jugador)
			Caso 3:
				Escribir "Ha habido un empate"
				finalizar_juego = Verdadero
				
			De Otro Modo:
				Escribir "Ha ganado el jugador " resultado 
				Escribir "¡¡¡Felicidades!!!"
				finalizar_juego = Verdadero		
				
		Fin Segun
		
	Hasta Que finalizar_juego = Verdadero	 
	
	
FinAlgoritmo
