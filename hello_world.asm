%include "headers/EHeaders.asm"
section .data
	text1 db "Hewwoo world!",10
	text2 db "Gosh asm is a lot of work!",10

section .text
    global _start

_start:
	print text1
	print text2

	exit 0


