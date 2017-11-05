; if #0 = 0, just print 0
     xor #0 $0 #1
     jz #1 :zero

     sub #0 $1 #0

; f0 = 0, f1 = 1
     or $0 $0 #1
     or $1 $0 #2

; iteration
iter add #1 #2 #3
     or $0 #2 #1
     or $0 #3 #2
     sub #0 $1 #0
     jz #0 :result
     jgt #0 :iter

; print result
result print #3
       halt

; input = 0
zero print $0
     halt
