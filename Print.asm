.data
      message: .asciiz "Hello World"
      m:       .asciiz "\n" 
      mes:     .word 109889
      mu:      .float 868.967897
.text
     jal lutu
     
      addi $s0,$0,46
      addi $s1,$0,16
      addi $t1,$0,1
      
       li $v0,4
       la $a0,message
       syscall   
       
       li $v0,4
       la $a0,m
       syscall
       
       li $v0,1
       add $a0,$s1,$s0
       syscall
       
       li $v0,4
       la $a0,m
       syscall
       
       li $v0,10
       syscall
       
   lutu:    
       li $v0,1
       lw $a0,mes
       syscall
       
       jr $ra
       
       
       
       