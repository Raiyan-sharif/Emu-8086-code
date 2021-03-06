.MODEL SMALL
.STACK 100H
.DATA

   
     data1 DB 10,13,'Input Number: $'
     data2 DB 10,13,'Your input was: $'
     
     TOTAL DW ?
     CHECKSIGN DB ?
     COUNTER DB ?
     1STDIGIT DB ?
     NEWLINE DB 10,13,'$'
        
.CODE

        MAIN PROC
            
 
           
            MOV AX,@DATA
            MOV DS,AX
            
            LEA DX,data1
            MOV AH,9
            INT 21H
            
           
            INPUT:

            
            MOV TOTAL,0
            MOV CHECKSIGN,0
            MOV COUNTER,0
            
            INTAKE:
            
                               
            
            MOV AH,1
            INT 21H
            SHR BX,8
            MOV BL,AL
            
                                
            CMP AL,13
            JE ENDINTAKE
            
            
            CMP AL,'-'
            JE NEGINPUT         
            
                
            INC COUNTER
            
            CMP COUNTER,1
            JNE OPERATION
            MOV 1STDIGIT,BL
                        
            
            OPERATION:
            MOV AX,10
            SUB BL,30H
            
            IMUL TOTAL
            
            MOV TOTAL,AX
            
            ADD TOTAL,BX
            
            LOOP INTAKE
            
           
            
            
            MOV AX,10              
            SUB BL,30H
            
            IMUL TOTAL
            
            MOV TOTAL,AX
            
            ADD TOTAL,BX
            
            JMP ENDINTAKE      
                  
                                                
            
            
           
            
            
            
            NEGINPUT:
            
            MOV CHECKSIGN,1                
            JMP INTAKE
            
            
            ENDINTAKE:
             
            CMP CHECKSIGN,1
            JNE OUTPUT
            
            NEG TOTAL
            
            


            
            OUTPUT:           
            

            
            LEA DX,NEWLINE
            MOV AH,9
            INT 21H
            
            LEA DX,data2
            MOV AH,9
            INT 21H            
            
            MOV AX,TOTAL
            
            OR AX,AX             ;Is AX less than 0
            JGE @END_IF1
            
            PUSH AX              ;Saving the value of register
            MOV DL,'-'
            MOV AH,2
            INT 21H
            POP AX
            NEG AX
            
            @END_IF1:
            
            XOR CX,CX
            MOV BX,10
            
            @REPEAT1:
            
            XOR DX,DX
            DIV BX
            PUSH DX
            INC CX
            
            OR AX,AX              ;is quotient 0?
            JNE @REPEAT1
            
            
            MOV AH,2
            
            @PRINT_LOOP:
            
            POP DX
            OR DL,30H
            INT 21H
            LOOP @PRINT_LOOP