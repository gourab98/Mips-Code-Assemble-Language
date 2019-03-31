.data 
   mess: .asciiz "This is a message from the master of \nthe multiple universe.\n"
.text
    main:
       jal doitfirst
       
       addi $t0,$0,29
       
       li $v0,1
       add $a0,$0,$t0
       syscall
       
       li $v0,10
       syscall
       
   doitfirst:
       li $v0,4
       la $a0,mess
       syscall
       
       jr $ra
           
   