.data
   
.text
     main:
          addi $t1,$0,38 
          addi $t2,$0,245
          
      jal goto
         
          li $v0,1
          add $a0, $v1,$0
          syscall
          
          li $v0,10
          syscall  
          
          
     goto:
         add $v1,$t1,$t2
         
       jr $ra          
                