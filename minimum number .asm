.model small
.stack 100h
.data
array db 5,10,3,7,2,8
n db 6
min db 255
.code
main proc
MOV AX,@data
MOV DS,AX

LEA SI, array
MOV AL, [SI]
MOV [min], AL
MOV CL, [n]
MOV CH, 0
DEC CX
find_min:
INC SI
MOV AL, [SI]
MOV BL, [min]
CMP AL, BL
JGE skip2
MOV [min], AL
skip2:
LOOP find_min
MOV DL, [min]
ADD DL, '0'
MOV AH,02h
INT 21h
MOV AH,4Ch
INT 21h
main endp
end main