.model small
.stack 100h
.data
array db 5,3,7,2,8
n db 6
max db 0
.code
main proc
MOV AX,@data
MOV DS,AX
LEA SI, array
MOV AL, [SI]
MOV [max], AL
MOV CL, [n]
MOV CH, 0
DEC CX
find_max:
INC SI
MOV AL, [SI]
MOV BL, [max]
CMP AL, BL
JLE skip
MOV [max], AL
skip:
LOOP find_max
MOV DL, [max]
ADD DL, '0'
MOV AH,02h
INT 21h
MOV AH,4Ch
INT 21h
main endp
end main