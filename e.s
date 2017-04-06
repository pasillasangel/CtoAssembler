.globl _start
_start:

movl $str1,%esi		# we put first string to %esi
movl $str2,%edi		# second string to %edi
movl $4,%ecx		# number of bytes to compare
cld			# clear flag D, if we won't clear it, the compare will occur in inverse order
rep  cmpsb		# compareing
jz   yes		# if our strings are equal then we jmp to yes, if not then exit

exit:
movl $1,%eax		# exit
int  $0x80

yes:
movl $4,%eax		# write
movl $1,%ebx		# stdout
movl $msg,%ecx		# out message
movl $msglen,%edx	# length of message
int  $0x80

jmp exit

.data
str1: 	 .string "asdf"
str2: 	 .string "asdf"
msg:  	 .string "The strings are equal! Quiting...\n"
msglen = . -msg		# calculate the length of msg
