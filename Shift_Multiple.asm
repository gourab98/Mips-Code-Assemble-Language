.data

.text
        addi $s0,$0,4
        
        sll $t0,$s0,3
        li $v0,1
        add $a0,$t0,$0
        syscall