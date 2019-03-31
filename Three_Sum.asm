	.text
	
	.globl	main
main:
	
	li	$v0,4	
	la	$a0, msg1	
	syscall

	
	li	$v0,5		
	syscall	
	move	$t0,$v0		

	
	li	$v0,4		
	la	$a0, msg2	
	syscall

	
	li	$v0,5		
	syscall	
	move	$t1,$v0		
	
	
		
	li      $v0,4
	la      $a0, msg4
	syscall 
	
	li      $v0,5
	syscall
	move    $t2,$v0

	add	$t0, $t0, $t1	
	add     $t2, $t0 ,$t2      

	
	li	$v0, 4
	la	$a0, msg3
	syscall


	li	$v0,1		
	move	$a0, $t2	
	syscall

	
	li	$v0,4		
	la	$a0, newline
	syscall

	li	$v0,10		
	syscall


	.data
msg1:	.asciiz	"Enter A:   "
msg2:	.asciiz	"Enter B:   "
msg4:   .asciiz "Enter C:   "
msg3:	.asciiz	"A + B + C = "
newline:   .asciiz	"\n"