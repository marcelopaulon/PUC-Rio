all: compile test clean
compile: flexC lex.yy.o y.tab.o
	gcc -o teste lex.yy.o y.tab.o
test:
	python runTests.py
flexC:
	lex ../monga.lex
	yacc -d ../monga.y
	cp ../lex.yy.h lex.yy.h
lex.yy.o:
	gcc -o lex.yy.o -c lex.yy.c -Wall -Wno-maybe-uninitialized -O2
y.tab.o:
	gcc -o y.tab.o -c y.tab.c -Wall -Wno-maybe-uninitialized -O2
clean:
	rm -rf *.o
	rm -rf y.tab.c
	rm -rf lex.yy.c
	rm -rf lex.yy.h
	rm -rf output.txt
