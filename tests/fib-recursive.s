; init result at #3
     or $0 $0 #3

; f0 = 0, f1 = 1
     or $0 $0 #1
     or $1 $0 #2

     call :func

; print result
     print #3
     halt

; recursion
func xor #0 #2 #5
     jz #5 :test1
     jnz #5 :test2
test1 add #3 #2 #3
      ret

test2 xor #0 #1 #5
      jz #5 :test3
      jnz #5 :test4
test3 ret

test4 sub #0 $1 #0
      call :func

      sub #0 $1 #0
call :func

      add #0 $2 #0
      ret
