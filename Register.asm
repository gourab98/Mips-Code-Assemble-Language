.data
      newline: .asciiz "\n"
.text
    main:
         addi $s0,$0,10
         
         jal increasemyregister
         
         li $v0,4
         la $a0,newline
         syscall
         
         li $v0,1
         move $a0,$s0
         syscall
  
  li $v0,10
  syscall
  
  
  increasemyregister:
       addi $sp,$sp,-4
       sw   $s0,0($sp)
  
     
        addi $s0,$s0,30
        
           
        li $v0,1
        move $a0,$s0
        syscall
        
        lw $s0,0($sp)
        addi $sp,$sp,4
        
       jr $ra     
       
                     
                                                 