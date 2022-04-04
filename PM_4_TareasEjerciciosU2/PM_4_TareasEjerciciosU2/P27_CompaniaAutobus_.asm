TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Programa #27: La compañía de autobuses “La curva loca” requiere determinar el cos­to que tendrá
;				el boleto de un viaje sencillo, esto basado en los kilóme­tros por recorrer y en el 
;				costo por kilómetro

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_P27 db "Ingresa la cantidad de kilometros a recorrer: ",0
msj1_P27 db "Costo por kilometro $8",0
msj2_P27 db "El costo del boleto es de $",0
.code 

main27 PROC
;Lógica del Programa

	mov edx, offset msj0_P27
	call writeString
	call readInt
	mov edx, offset msj1_P27
	call writeString
	call CrLf

	mov ebx, 8d
	mul ebx
	
	mov edx, offset msj2_P27
	call writeString
	call writeDec
	call CrLf

exit

main27 ENDP

END main27