
.MODEL SMALL
.STACK 100H
.DATA
RA1 DB 'void main()$'
RA2 DB '{$'
RA3 db 'printf("HELLO WORLD");$'
RA4 DB '}$'

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        LEA DX,RA1
        MOV AH,9
        INT 21H
        
        ;MOV AH,1
        ;INT 21H
        ;MOV BL,AL
        
        
        MOV AH,2
        mov DL,10
        INT 21H
        
        MOV AH,2
        MOV DL,13
        INT 21H
        
        LEA DX,RA2
        MOV AH,9
        INT 21H
        
        MOV AH,2
        mov DL,10
        INT 21H
        
        MOV AH,2
        MOV DL,13
        INT 21H  
        MOV AH,2
        MOV DL,20H
        INT 21H
        INT 21H
        
        LEA DX,RA3
        MOV AH,9
        INT 21H 
        
        MOV AH,2
        MOV DL,13
        INT 21H
        
        MOV AH,2
        MOV DL,10
        INT 21H
        
        LEA DX,RA4
        MOV AH,9
        INT 21H
        
        
        
        
        
        
       
          
        MAIN ENDP
    END MAIN