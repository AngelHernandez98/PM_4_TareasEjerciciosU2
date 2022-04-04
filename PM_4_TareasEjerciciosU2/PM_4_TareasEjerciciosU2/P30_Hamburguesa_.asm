TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Programa #30: “El náufrago satisfecho” ofrece hamburguesas sencillas, dobles y triples,
;				las cuales tienen un costo de $20, $25 y $28 respectivamente.
;				La empresa acepta tarjetas de crédito con un cargo de $25 sobre la compra.
;				Suponiendo que los clientes adquieren sólo un tipo de hamburguesa.
;				Se quiere determinar cuánto debe pagar una persona por N hamburguesas

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_P30 db "						      RESTAURANTE",0
msj1_P30 db "						'El Naufrago Satisfecho'",0
msj2_P30 db "Menu: ",0
msj3_P30 db "   1.- Hamburguesa Sencilla $20",0
msj4_P30 db "   2.- Hamburguesa Double $25",0
msj5_P30 db "   3.- Hamburguesa Triple $28",0
msj6_P30 db "Seleccione una opcion: ",0
msj7_P30 db "   Ingrese la cantidad de hamburguesas a comprar: ",0
msj8_P30 db "   Costo a pagar $ ",0
msj9_P30 db "                                        Gracias por su compra, vuelva pronto :D",0

.code 

main30 PROC
;Lógica del Programa

	mov edx, offset msj0_P30
	call writeString
	call CrLf
	mov edx, offset msj1_P30
	call writeString
	call CrLf
	mov edx, offset msj2_P30
	call writeString
	call CrLf
	mov edx, offset msj3_P30
	call writeString
	call CrLf
	mov edx, offset msj4_P30
	call writeString
	call CrLf
	mov edx, offset msj5_P30
	call writeString
	call CrLf
	call CrLf
	mov edx, offset msj6_P30
	call writeString
	call readInt
	call CrLf

	mov ebx, 1d
	cmp ebx, eax

	je opcionUno
	jmp continuar
	opcionUno:
		mov edx, offset msj3_P30
		call writeString
		call CrLf
		mov edx, offset msj7_P30
		call writeString
		call readInt
		call CrLf

		mov ebx, 20d
		mul ebx
		add eax, 25
		mov edx, offset msj8_P30
		call writeString
		call writeDec
		call CrLf
		mov edx, offset msj9_P30
		call writeString
		call CrLf

	continuar:

	mov ebx, 2d
	cmp ebx, eax

	je opcionDos
	jmp continuar2
	opcionDos:
		mov edx, offset msj4_P30
		call writeString
		call CrLf
		mov edx, offset msj7_P30
		call writeString
		call readInt
		call CrLf

		mov ebx, 25d
		mul ebx
		add eax, 25
		mov edx, offset msj8_P30
		call writeString
		call writeDec
		call CrLf
		mov edx, offset msj9_P30
		call writeString
		call CrLf

	continuar2:

	mov ebx, 3d
	cmp ebx, eax

	je opcionTres
	jmp continuar3
	opcionTres:
		mov edx, offset msj5_P30
		call writeString
		call CrLf
		mov edx, offset msj7_P30
		call writeString
		call readInt
		call CrLf

		mov ebx, 28d
		mul ebx
		add eax, 25
		mov edx, offset msj8_P30
		call writeString
		call writeDec
		call CrLf
		mov edx, offset msj9_P30
		call writeString
		call CrLf

	continuar3:

exit

main30 ENDP

END main30