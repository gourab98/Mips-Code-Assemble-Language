.data
     msg: .asciiz "\n:"
.text
    
          addi $t0, $0 120
          addi $t1, $0 2
          	                  	            	                  	       	                  	            	                  	      
          li $v0,1
          mul $a0,$t0,$t1
          syscall
          
          li $v0,4
          la $a0,msg
          syscall
          
          mult $t0,$t1
          mflo $s0
          li $v0,1
          add $a0,$0,$s0
          syscall	                  	            	                  	       	                  	            	                  	               	            	                  	       	                  	            	                  	               	            	                  	       	                  	            	                  	      	                  	            	                  	       	                  	            	                  	               	            	                  	       	                  	            	                  	               	            	                  	       	                  	            	                  	      