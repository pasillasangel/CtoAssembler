.globl main
main:

xorl %edi,%edi			
leal str,%esi			# effective address of string to %esi

abc:
lodsb				# read byte of string, then automaticaly increment position in string (next byte)
cmpb $0,%al			# if readed byte equal 0, so end of string reached
jz   continue				
incl %edi			# counter
jmp  abc			# repeat procedure

continue:
decl %edi

...				# now %edi contain length 

.data
str: .string "CheckMylength"	# if there is '\n', then it increment length by 1
