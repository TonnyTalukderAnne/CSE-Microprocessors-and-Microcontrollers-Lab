.model small
.stack 100h
.code
main proc
MOV AL,10
MOV BL,2
DIV BL
ADD AL,48
MOV DL,AL
MOV AH,2
INT 21H
main endp
end main