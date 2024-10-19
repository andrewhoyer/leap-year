.MODEL SMALL
.STACK
.DATA
     
 MSG1 DB '   LEAP yEAR!$'
 MSG2 DB '   nOT A lEAP yEAR!!$'

 
.CODE

 MAIN PROC FAR
 MOV AX,@DATA
 MOV DS,AX   
   MOV DL,10H
   MOV AH,01H
   INT 21H  
   SUB AL,'0'
   MUL DL
   ADD BH,AL 
   MOV AH,01H
   INT 21H
   SUB AL,'0'
   ADD BH,AL
   MOV AH,01H
   INT 21H
   SUB AL,'0'
   MUL DL
   ADD BL,AL
   MOV AH,01H
   INT 21H
   SUB AL,'0'
   ADD BL,AL 
   
   ;;CHECKING FOR LEAP YEAR (IF %400)
    
   MOV CX,400H
   MOV AX,BX 
   DIV CX
   CMP DX,0
   JE LEAP
   JMP VERIFY_4
   
   ;;(IF YEAR%400 ==TRUE THEN YEAR%100 == ? (IT SHOULD BE TRUE) )
   
   LEAP:
   XOR DX,DX  
   MOV AX,BX
   MOV CX,100H
   DIV CX
   CMP DX,0
   JE VERIFIED 
   JMP VERIFY_4
    
    ;; (IF YEAR%400 && YEAR%100 == FALSE THEN CHECK YEAR%4 == ? )
    
    VERIFY_4:    
     XOR DX, DX 
     MOV AX,BX
     MOV CX,4H
     DIV CX
     CMP DX,0
     JE VERIFIED  
     
    ;; (IF YEAR%400 && YEAR %100 && YEAR%4 == FALSE ) NOT A lEAP YEAR  
    
     MOV AH,09H
     LEA DX,MSG2
     INT 21H
     JMP END  
      
    ;;(IF YEAR%400 && YEAR%100 || YAER % 4 == TRUE) ITS A LEAP YEAR
     
    VERIFIED:
    MOV AH,09H
    LEA DX,MSG1
    INT 21H
    JMP END 
     
     
              
   END:
     MAIN ENDP
     END MAIN