.globl main
main:

movl $str1,%esi		# we put string "AT&T" to %esi
movl $buf,%edi		# using for contain result after movsb executed
movl $6,%ecx		# size of str1
cld			# clear direction flag
rep  movsb		# first time we add str1 to $buf.
movl $str2,%esi		# here we prepare str2 before adding to $buf
movl $9,%ecx		# size of str2
cld			
rep  movsb		# after it we have str1+str2 in $buf

movl $4,%eax		# write
movl $1,%ebx		# stdout
movl $buf,%ecx		# "AT&T is cool\n"
movl $15,%edx		# size of $buf
int  $0x80

movl $1,%eax		# exit
int  $0x80

.data
str1: .string "AT&T "
str2: .string "is cool\n"
