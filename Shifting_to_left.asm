.data
.text
      addi $s0,$0,5
      
      sll $t2,$s0,3 #shift the binary number of 5 to left {5(101) 3--> 40(101000)}
      
      li $v0 ,1
     move $a0,$t2
         syscall                   