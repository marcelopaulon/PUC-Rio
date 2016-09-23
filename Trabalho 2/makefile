all: compile test clean
compile: lex.yy.o y.tab.o
	gcc -o teste lex.yy.o y.tab.o
test:
	python runTests.py
lex.yy.o:
	gcc -o lex.yy.o -c lex.yy.c -Wall -Wno-maybe-uninitialized -O2
y.tab.o:
	yacc monga.y
	gcc -o y.tab.o -c y.tab.c -Wall -Wno-maybe-uninitialized -O2
clean:
	rm -rf *.o
	rm -rf y.tab.c
	rm -rf output.txt
