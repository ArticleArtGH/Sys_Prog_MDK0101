mov 3,r0
cmp 2,r0
jg less
;=2 ?
push r0
sub 2,r0
cmp 0,r0
jz more_equally
pop r0
;jge more_equally
;jl finish
call chek
;mov ?,r3

less:
mov 0,r3 ;<2
jmp finish

more_equally:
mov 1,r3 ;>2 | =0
finish:
stop

chek:
push r0;3
mov r0,r1
div 2,r0
mul 2,r0
;sub r0,r1
cmp r0,r1
jg less ;не точная 2

pop r0
div 2,r0
cmp 2,r0
jg more_equally
call chek
;точная 2
ret
