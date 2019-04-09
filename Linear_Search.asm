.globl main
.data
      array: .word 16,13,14,15,16,1,3,13,13,16,16,1
      size:  .word 12
      found: .asciiz "Found"
      notfound: .asciiz "Not Found"
.text
 main:  la $s0,array
        lw $t1,size
        li $t2,17
        li $t3,0
        
        
start: beq $t3,$t1,finish
       lw $t0,($s0)
       beq $t2,$t0,Found
       addi $t3,$t3,1
       mul $t5,$t3,4   #i++
       addi $s0,$t5,0  #arr[i++]
       b start

                                          
finish: li $v0,4
        la $a0,notfound
        syscall
        li $v0,10
        syscall
        
Found: li $v0,4
       la $a0,found
       syscall
       li $v0,10
       syscall                                                                                                                                      