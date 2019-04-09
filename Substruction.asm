.data

     num1: .word 23
     num2: .word 10
     
.text

      lw $s0, num1 
      lw $s1, num2
      
      li $v0,1
      #move $a0,$t0
      sub $a0,$s0,$s1
      syscall
           