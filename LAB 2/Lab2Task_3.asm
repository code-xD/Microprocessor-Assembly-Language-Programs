.MODEL TINY
.DATA
	ORG 100H
	ARRAY1 DB 78H, 32H, 0AH, 2BH, 0A0H, 5FH, 67H, 0AH, 54H, 49H
.CODE
.STARTUP
	LEA SI, ARRAY1 		
	MOV BL, 'E' 	    
	MOV CX, 0AH			
	MOV AL, 0AH			
X1: CMP [SI], AL		
	JNE X2
	MOV [SI], BL
X2: INC SI
	LOOP X1
	
	LEA SI, ARRAY1      
	MOV CX, 0AH
X3:	MOV DL,[SI]
	INC SI
	LOOP X3		
.EXIT
END