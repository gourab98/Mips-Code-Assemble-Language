 .data

     num1: .word 5
     num2: .word 10
     
     num3: .word 34
     num4: .word 4
     
 .text
 
   lw $t0,num1
   lw $t1,num2
   
   lw $t2,num3
   lw $t3,num4
   
   add $t6,$t1,$t0 #t2=t1+t0
   sub $t5,$t2,$t3 
   
   li  $v0,1
   add $a0,$zero,$t5
   syscall 
      
   li  $v0,1
   add $a0,$t5,$t6
   syscall                    