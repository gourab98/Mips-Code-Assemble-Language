.data 
     message: .asciiz "This is a message."
     
 .text
      main:
            jal doitfirst
            
            addi $s0,$0,47
            
            li $v0,1
            add $a0,$0,$s0
            syscall
                
                    
                        
                            
       doitfirst:
            li $v0,4
            la $a0,message
            syscall
            
      jr $ra                                                        
                                    
                                            