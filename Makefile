all:
	nasm -f elf64 A0_2021464.asm
	gcc -no-pie A0_2021464.o
	./a.out
	rm A0_2021464.o a.out
