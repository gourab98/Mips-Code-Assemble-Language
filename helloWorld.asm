.data

   mymessage: .asciiz "Hello World\n"
   name:      .asciiz "Gourab Saha.\n"
   mychar:    .byte 'g'
   me:        .byte 's'
   
.text
   li $v0,4
   la $a0, mymessage
   syscall 
   
   li $v0,4
   la $a0, name
   syscall
   
