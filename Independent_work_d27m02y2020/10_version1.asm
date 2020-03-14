mov 7,r0
mov r0,r2
mov r0,r1
mov 0,r3
call fact
stop

fact:
sub 1,r1
cmp 1,r1
jz sum
mul r1,r2
;mov r1,r2

cmp 1,r1

call fact

sum:
add r2,r3
sub 2,r0
cmp 1,r0
jz finish
call fact
;mov r0,r1
finish:
ret



