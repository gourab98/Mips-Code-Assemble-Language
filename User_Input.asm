.data
     mess: .asciiz "Give Your age="
     mess1: .asciiz "\nYour age is ="
     
     mess2: .asciiz "\nTell me your name="
     userinput:  .space 30
     mess3: .asciiz "Your name is ="
.text 
   main:
        li $v0,4
        la $a0,mess
        syscall
             
        li $v0,5
        syscall 
        
        move $t0,$v0
        
        li $v0,4
        la $a0,mess1
        syscall
        
        li $v0,1
        add $a0,$t0,0
        syscall   
        
      li $v0,4
      la $a0,mess2
      syscall
      
      li $v0,8
      la $a0,userinput
      li $a1 30
      syscall
      
      li $v0,4
      la $a0,mess3
      syscall
      
      li $v0,4
      la $a0,userinput
      syscall                        
                                                              
                                                                                                                   
      li $v0,10
      syscall                                                                                                                                                                                                                       