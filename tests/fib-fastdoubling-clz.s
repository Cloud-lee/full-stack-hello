     xor $0 #0 #1
     jz #1 :output

     clz #0 #1

     sub $30 #1 #1

     or $1 $0 #2
     or $1 $0 #3

     xor $1 #0 #4
     jz #4 :exit

fib  lsl #3 $1 #4
     sub #4 #2 #4
     mul #4 #2 #4

     mul #2 #2 #6
     mul #3 #3 #5
     add #5 #6 #5

     or #5 $0 #3
     or #4 $0 #2

     lsr #0 #1 #5
     and #5 $1 #5
     jz #5 :no_adv

     add #2 #3 #4
     or #3 $0 #2
     or #4 $0 #3

no_adv jz #1 :exit
       sub #1 $1 #1
       jmp :fib

exit   or #2 $0 #0
output print #0
       halt
