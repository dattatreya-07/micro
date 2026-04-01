                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STRING1 DB "HELLO"
KEY DB 'E'
OCCUR DB 00H
COUNT DB 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV CL,COUNT
        LEA DI,STRING1
        MOV AL,KEY
L2:
        SCASB
        JNZ L1
        MOV OCCUR,01H
        JMP L3
L1:
        INC DI
        DEC CL
        JNZ L2
        MOV OCCUR,00H
L3:
        HLT
CODE ENDS
END

