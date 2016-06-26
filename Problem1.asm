.MODEL SMALL
.STACK 100H
.DATA
ra1 DB '$'
ra2 DB '$'
ra3 DB '$'
ra4 DB '$'
m1 DB '<$'
m2 DB '>$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,4
    
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV ra1,BL
    
    MOV AH,1
    INT 21H
    MOV ra2,AL
    MOV AH,1
    INT 21H
    MOV ra3,AL
    MOV AH,1
    INT 21H
    MOV ra4,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H
    

    MOV AH,2
    MOV DL,ra1
    INT 21H
    LEA DX,m1
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra2
    int 21H
    LEA DX,m1
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra1
    INT 21H
    LEA DX,m1
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra2
    int 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H 
    
    
    
    MOV AH,2
    MOV DL,ra3
    INT 21H
    LEA DX,m2
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra4
    int 21H
    LEA DX,m2
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra3
    INT 21H
    LEA DX,m2
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,ra4
    int 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H 
    
    LEA DX,m2
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H 
    
    LEA DX,m1
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    MOV AH,2
    MOV DL,ra3
    INT 21H
    MOV AH,2
    MOV DL,ra1
    INT 21H
    LEA DX,m2
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    
    
    
    
    
    
    
    MAIN ENDP
END MAIN