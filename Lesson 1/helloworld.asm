; Hello World Program - amstutor.com
; Compile with: nasm -f elf hellowrold.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld.o -o helloworld
; Run with: ./hellowrld

SECTION .data
msg		db		'Hello World!', 0Ah		; assign msg variable with your message string

SECTION .text
global _start

_start:

	mov		edx, 13		; number of bytes to write - one for each letter plus 0Ah (line feed character)
	mov		ecx, msg 	; move the memory address of our message string into ecx
	mov 	ebx, 1 		; write to the STDOUT file
	mov 	eax, 4 		; invoke SYS_WRITE (kernel opcode 4)