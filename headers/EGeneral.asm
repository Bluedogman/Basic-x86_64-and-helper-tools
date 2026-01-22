%macro exit 1
	mov rax, 60
	mov rdi, %1
	syscall
%endmacro

;automates and cleans up code in projects to reduce verbosity
%macro print 1
	mov rax, %1
	call _Print
%endmacro

;Print a str
_Print: 
	push rax
	mov rbx, 0 ;We use rbx to count len of str

; returns the length of a string
_len:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _len

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret
