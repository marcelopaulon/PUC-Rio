CFLAGS = -Wall -Wno-maybe-uninitialized -O2 -std=gnu99

all: compile clean
compile: flexC lex.yy.o ast.o symboltable.o typechecking.o llvm.o y.tab.o
	gcc -o teste lex.yy.o ast.o symboltable.o typechecking.o llvm.o y.tab.o -lm -std=gnu99
flexC:
	lex ../monga.lex
	yacc -d ../monga.y
	cp ../lex.yy.h lex.yy.h
lex.yy.o:
	gcc -o lex.yy.o -c lex.yy.c $(CFLAGS)
ast.o:
	gcc -o ast.o -c ../ast.c $(CFLAGS)
symboltable.o:
	gcc -o symboltable.o -c ../symboltable.c $(CFLAGS)
typechecking.o:
	gcc -o typechecking.o -c ../typechecking.c $(CFLAGS)
llvm.o:
	gcc -o llvm.o -c ../llvm.c $(CFLAGS)
y.tab.o:
	gcc -o y.tab.o -c y.tab.c $(CFLAGS)
clean:
	rm -rf *.o
	rm -rf y.tab.c
	rm -rf lex.yy.c
	rm -rf lex.yy.h
	rm -rf output.txt
tempTest: clean compile
	./teste out.txt < tests/$(test).monga
	llc out.txt
	gcc -Wall test.c out.txt.s -o testeMongaGen -std=gnu99
	./testeMongaGen
