.data
       mess1: .asciiz "My name is Gourab Saha\n"
.text
 main:
      addi $t0,$0,0
      
while:
      bgt $t0,10,exit
      addi $t0,$t0,1
      
      li $v0,4
      la $a0,mess1
      syscall
      
      b while
      
exit:
       li $v0, 10
       syscall                  