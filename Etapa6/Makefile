#
# UFRGS - Compiladores B - Marcelo Johann - 2009/2 - Etapa 1
#
# Makefile for single compiler call
# All source files must be included from code embedded in scanner.l
# In our case, you probably need #include "hash.c" at the beginning
# and #include "main.c" in the last part of the scanner.l
#

etapa: lex.yy.c y.tab.o main.o hash.o tree.o semantic.o tac.o asm.o
	gcc -g -rdynamic -o etapa6 lex.yy.c y.tab.c main.o hash.o tree.o semantic.o tac.o asm.o

lex.yy.c: scanner.l 
	lex --header-file=lex.yy.h  scanner.l

y.tab.o: y.tab.c
	gcc -c y.tab.c $(CFLAGS)
y.tab.c: parser.y
	yacc -v -d parser.y

main.o: main.c lex.yy.c
	gcc -g -c main.c
tree.o: tree.c
	gcc -g -c tree.c
hash.o: hash.c
	gcc -g -c hash.c
tac.o:  tac.c
	gcc -g -c tac.c
semantic.o: semantic.c
	gcc -g -c semantic.c
asm.o: asm.c
	gcc -g -c asm.c


tgz: clean
	tar cvzf  ../etapa6.tgz . --exclude-cvs

clean:
	@rm *.yy.* etapa6 y.*.* y.* *.o || true
