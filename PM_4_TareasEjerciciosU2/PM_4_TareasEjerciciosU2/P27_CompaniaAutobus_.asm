TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Programa #27: La compa��a de autobuses �La curva loca� requiere determinar el cos�to que tendr�
;				el boleto de un viaje sencillo, esto basado en los kil�me�tros por recorrer y en el 
;				costo por kil�metro

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj0_P27 db "Ingresa la cantidad de kilometros a recorrer: ",0
msj1_P27 db "Costo por kilometro $8",0
msj2_P27 db "El costo del boleto es de $",0
.code 

main27 PROC
;L�gica del Programa

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