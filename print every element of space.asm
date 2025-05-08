.model small
.stack 100h
.data
array db 5,3,7,2,8
n db 6
.code
main proc
MOV AX,@data
MOV DS,AX
LEA SI, array
MOV CL, [n]
MOV CH, 0
print_loop:
MOV AL, [SI]
ADD AL, '0'
MOV DL, AL
MOV AH,02h
INT 21h
MOV DL, ' '
MOV AH,02h
INT 21h
INC SI
LOOP print_loop
MOV AH,4Ch
INT 21h
main endp
end main