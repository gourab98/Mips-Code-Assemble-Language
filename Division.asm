.data
      m: .asciiz "\n"
      qu: .asciiz "Quotient: "
      re: .asciiz "Reminder: "

.text
      addi $t0,$0,34
      addi $t1,$0,7
      
      div $t0,$t1
      
      mflo $s0
      mfhi $s1
      
      li $v0,4
      la $a0,qu
      syscall
      
      
      li $v0,1
      add $a0,$0,$s0
      syscall
      
      li $v0,4
      la $a0,m
      syscall
      
      li $v0,4
      la $a0,re
      syscall
      
      li $v0,1
      add $a0,$0,$s1
      syscall
      