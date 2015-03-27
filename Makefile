fibo1:
	nasm -f elf32 fibo1.asm
	g++ -m32 IO.cpp fibo1.o -o out1
	./out1

test2:
	nasm -f elf32 test2.asm
	g++ -m32 IO.cpp test2.o -o out2
	./out2

pdf:
	latexmk -xelatex -output-directory=tex_files main.tex

view:
	evince tex_files/main.pdf &
