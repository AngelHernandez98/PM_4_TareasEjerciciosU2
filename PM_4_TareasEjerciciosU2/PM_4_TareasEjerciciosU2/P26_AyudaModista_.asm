TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Programa #26: Una modista, para realizar sus prendas de vestir, encarga las X telas que necesita
;				al ex�tranjero. Para cada pedido, tiene que proporcionar las medidas de las telas
;				en cent�metros, pero ella generalmente las tiene en metros. Ay�dale a determinar
;				cu�ntos cent�metros de cada tela debe pedir con base en los metros que requiere

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj0_P26 db "Ingrese la cantidad de telas encargadas: ",0
msj1_P26 db "Medida en metros de la tela #", 0
msj2_P26 db ": ", 0
msj3_P26 db "La medida de la tela en centimetros es: ",0
var dword 0

.code 

main26 PROC
;L�gica del Programa
	
	mov edx, offset msj0_P26
	call writeString
	call readInt

	mov ecx, 1
	mov var, eax
	mov ebx, 100

	ciclo:
		call CrLf
		mov edx, offset msj1_P26
		call writeString
		mov eax, ecx
		call writeDec
		mov edx, offset msj2_P26
		call writeString
		call readInt
		mul ebx

		mov edx, offset msj3_P26
		call writeString
		call writeDec
		call CrLf

	inc ecx
	cmp ecx, var
	jle ciclo

exit

main26 ENDP

END main26