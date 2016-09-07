all: compile test clean
compile: lex.yy.o main.o
	gcc -o teste lex.yy.o main.o
test:
	python runTests.py
lex.yy.o:
	lex monga.lex
	gcc -o lex.yy.o -c lex.yy.c -Wall -Wno-maybe-uninitialized -O2
main.o:
	gcc -o main.o -c main.c -Wall -O2
clean:
	rm -rf *.o
	rm -rf lex.yy.c
