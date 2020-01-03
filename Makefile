
latextohtml : y.tab.c lex.yy.c
	gcc -o latextohtml y.tab.c lex.yy.c -lfl 

lex.yy.c: first.l
	flex first.l

y.tab.h y.tab.c: first.y
	yacc -d -t first.y

