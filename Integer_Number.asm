.data
   age: .word 21
.text
   li $v0,1
   lw $a0,age
   syscall   
   
   
   
.data 
  age9: .word 32
  ap: .asciiz "\n"
.text

    li $v0,4
    la $a0,ap
    syscall

    li $v0,1
    lw $a0,age9 
    syscall
    
    
         
