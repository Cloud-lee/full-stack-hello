     xor #0 $0 #1
     jz #1 :zero

; init variable
     or $1 $0 #1 ; t0 = 1
     or $1 $0 #2 ; t1 = 1
     or $1 $0 #3 ; t3 = 1
     or $0 $0 #4
     or $1 $0 #5 ; i = 1

; while (i < n)
func or #0 $0 #6 ; copy input to #6
     sub #6 #5 #6
     jlt #6 :result
     jz #6 :result

; if ((i << 1) <= n)
     or #0 $0 #6
     lsl #5 $1 #7
     sub #7 #6 #7
     jgt #7 :else
     mul #2 #2 #4 ; t4 = t1 * t1
     mul #1 #1 #7 ; tmp = t0 * t0
     add #4 #7 #4 ; t4 += tmp
     mul $2 #2 #3 ; t3 = t1 * 2
     sub #3 #1 #3 ; t3 -= t0
     mul #1 #3 #3 ; t3 *= t0
     or $0 #3 #1 ; t0 = t3
     or $0 #4 #2 ; t1 = t4
     lsl #5 $1 #5 ; i <<= 1
     jmp :func

; else
else or $0 #3 #1 ; t0 = t3
     or $0 #4 #3 ; t3 = t4
     add #4 #1 #4 ; t4 += t0
     add #5 $1 #5 ; i += 1
     jmp :func

result print #3
       halt

zero print $0
     halt
