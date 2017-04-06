.globl main
main:

movl $5,%esi		# repeat 5 times, use %esi or %edi doesn't matter

loop:

# write (stdout,str,5);
movl $4,%eax		
movl $1,%ebx
movl $str,%ecx
movl $5,%edx
int  $0x80

decl %esi		# decrease %esi by 1
tesl %esi,%esi		# if %esi equal 0
jz   exit		# then jmp exit

jmp  loop		# jmp to start of counter

exit:
movl $1,%eax
int  $0x80
