call :testcall
print "fail"
halt

testcall print "call success"
jmp :testjmp
print "fail"
halt

testjmp print "jmp success"
or $0 $0 #0
jz #0 :testjz
print "fail"
halt

testjz print "jz success"
add $1 #0 #0
jnz #0 :testjnz
print "fail"
halt

testjnz print "jnz success"
jge #0 :testjge1
print "fail"
halt

testjge1 print "jge success"
sub #0 $1 #0
jge #0 :testjge2
print "fail"
halt

testjge2 print "jge success"
jle #0 :testjle1
print "fail"
halt

testjle1 print "jle success"
sub #0 $1 #0
jle #0 :testjle2
print "fail"
halt

testjle2 print "jle success"
jlt #0 :testjlt
print "fail"
halt

testjlt print "jlt success"
add #0 $2 #0
jgt #0 :testjgt
print "fail"
halt

testjgt print "jgt success"
halt

