     or $0 $0 #1
     clz #1 #2
     print #2

     add #1 $1 #1
     clz #1 #2
     print #2

loop lsl #1 $1 #1
     clz #1 #2
     print #2
     jlt #1 :exit
     jmp :loop

exit halt
