.data
   age: .word 21
.text
   li $v0,1
   lw $a0,age
   syscall   