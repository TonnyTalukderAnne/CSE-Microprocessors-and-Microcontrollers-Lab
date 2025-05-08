.model small
.stack 100h
.data
.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, 4
MOV BL, 2
MUL BL
MOV DL, AL
ADD DL, '0'
MOV AH, 02h
INT 21h
MOV AH, 4Ch
INT 21h
main endp
end main