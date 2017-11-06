; init
     or $0 $0 #1
     or $0 $1 #2

     or $0 $0 #3

; call func
     call :tail
     print #3
     halt

; tail recursion
tail   xor #0 $0 #4
       jz #4 :iszero
       jnz #4 :notzero
iszero or #1 $0 #3
       ret

notzero xor #0 $1 #4
        jz #4 :isone
        jnz #4 :notone
isone or #2 $0 #3
      ret

; #1 = #2, #2 = #1 + #2
notone or #1 $0 #5
       or #2 $0 #1
       add #2 #5 #2
       sub #0 $1 #0
       call :tail
       ret

