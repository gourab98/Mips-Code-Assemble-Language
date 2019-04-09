.data 
     array:  .word 2,3,5,7,8,9,12,14,16,19
     arrsize:.word 10
     nl: .asciiz "\n"
.text
      lw $t1,arrsize
      la $t2,array
      li $t3,0

loopstart:
      beq $t3,$t1,finish
      li $v0,1
      lw $a0,($t2)
      syscall
      
      li $v0,4
      la $a0,nl
      syscall
      
      addi $t3,$t3,1
      addi $t2,$t2,4
      b loopstart
      
finish: li $v0,10 
       syscall     
           