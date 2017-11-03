; init
or $0 $0 #1
or $0 $1 #2

or $0 $0 #3

; call func
call #6
print #3
halt

; tail recursion
xor #0 $0 #4
jz #4 #9
jnz #4 #11
or #1 $0 #3
ret

xor #0 $1 #4
jz #4 #14
jnz #4 #16
or #2 $0 #3
ret

; #1 = #2, #2 = #1 + #2
or #1 $0 #5
or #2 $0 #1
add #2 #5 #2
sub #0 $1 #0
call #6
ret

