extern printf
extern scanf

section .text
    	global main
main:
    	push rbp
	mov rbp,rsp

print_text1:
	lea rdi,[text1]
	call printf

	lea rdi,[format]
	lea rsi,[string]
	call scanf

	lea rdi,[text2]
	call printf


	lea rdi,[format]
	lea rsi,[number]
	call scanf

	lea rdi,[format]
	lea rsi,[string]
	call printf

	lea rdi,[format]
	lea rsi,[number]
	mov rsi,rsi
	call printf

	leave
	ret

section .data
	text1: db "Enter a number: ",0
	text2: db "Enter a string: ",0
	format: db 10,"%s",0
	
section .bss
	string resb 40
	number resb 8

