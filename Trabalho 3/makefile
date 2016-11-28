all: compile clean
compile: flexC lex.yy.o ast.o symboltable.o typechecking.o llvm.o y.tab.o
	gcc -o teste lex.yy.o ast.o symboltable.o typechecking.o llvm.o y.tab.o
flexC:
	lex ../monga.lex
	yacc -d ../monga.y
	cp ../lex.yy.h lex.yy.h
lex.yy.o:
	gcc -o lex.yy.o -c lex.yy.c -Wall -Wno-maybe-uninitialized -O2
ast.o:
	gcc -o ast.o -c ../ast.c -Wall -Wno-maybe-uninitialized -O2
symboltable.o:
	gcc -o symboltable.o -c ../symboltable.c -Wall -Wno-maybe-uninitialized -O2
typechecking.o:
	gcc -o typechecking.o -c ../typechecking.c -Wall -Wno-maybe-uninitialized -O2
llvm.o:
	gcc -o llvm.o -c ../llvm.c -Wall -Wno-maybe-uninitialized -O2
y.tab.o:
	gcc -o y.tab.o -c y.tab.c -Wall -Wno-maybe-uninitialized -O2
clean:
	rm -rf *.o
	rm -rf y.tab.c
	rm -rf lex.yy.c
	rm -rf lex.yy.h
	rm -rf output.txt
