TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Programa #28: Determinar aproximadamente cu�ntos meses, sema�nas, d�as y horas ha vivido una persona,
;				basado en su edad

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj0_P28 db "Ingresa tu edad: ",0
msj1_P28 db "Cantidad de meses vividos: ",0
msj2_P28 db "Cantidad de semanas vividos: ",0
msj3_P28 db "Cantidad de dias vividos: ",0
msj4_P28 db "Cantidad de horas vividos: ",0

.code 

main28 PROC
;L�gica del Programa

	mov edx, offset msj0_P28
	call writeString
	call readInt
	call CrLf

	mov ebx, eax ;23
	mov ecx, 12d
	mul ecx

	mov edx, offset msj1_P28
	call writeString
	call writeDec
	call CrLf

	mov eax, ebx ;23
	mov ecx, 52d
	mul ecx

	mov edx, offset msj2_P28
	call writeString
	call writeDec
	call CrLf

	mov eax, ebx ;23
	mov ecx, 365d
	mul ecx

	mov edx, offset msj3_P28
	call writeString
	call writeDec
	call CrLf

	mov eax, ebx ;23
	mov ecx, 8760d
	mul ecx

	mov edx, offset msj4_P28
	call writeString
	call writeDec
	call CrLf

exit

main28 ENDP

END main28