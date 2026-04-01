		OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARRAY DB 10H,20H, 30H, 20H, 40H, 20H, 50H   
LEN EQU 07H                      
TARGET_NUM DB 20H                             
COUNT DB 00H                                    
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
        MOV AX, DATA                              
        MOV DS, AX
        LEA SI, ARRAY                             
        MOV CL, LEN                           
        MOV CH, 0                                 
        MOV AL, TARGET_NUM                        
        MOV BX, 0                                
    L1:
        CMP AL, [SI]                              
        JNE L2                          
        INC BX                                    
    L2:
        INC SI                                    
        DEC CX                                    
        JNZ L1                            
    L3:
        MOV COUNT, BL                             
        MOV AH, 4CH                               
        INT 21H                                   
CODE ENDS
END 

