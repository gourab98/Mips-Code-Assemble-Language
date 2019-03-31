.data 
  mdouble:    .double 3.43467584657952985768937
  zerodouble: .double 0.0 
.text
    ldc1 $f2,mdouble
    ldc1 $f0,zerodouble
    
      li    $v0,3
      #add.d $f12,$f2,$f0
      syscall