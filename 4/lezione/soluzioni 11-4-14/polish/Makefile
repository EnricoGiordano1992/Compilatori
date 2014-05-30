# A Makefile for simple lex and yacc examples

# Comment out the proper lines below according to the scanner and
# parser generators available in your system

LEX = lex
YACC = yacc -d

# LEX = flex 
# YACC = bison -d

LEX_FILE = polish.l
YACC_FILE = polish.y
OUT = polish

# We assume that your C-compiler is called gcc

CC = gcc

# $(OUT) is the final object that we will generate, it is produced by
# the C-compiler from the y.tab.o and from the lex.yy.o

$(OUT): y.tab.o lex.yy.o
	$(CC) -o $(OUT) y.tab.o lex.yy.o -ll -lm 

# These dependency rules indicate that (1) lex.yy.o depends on
# lex.yy.c and y.tab.h and (2) lex.yy.o and y.tab.o depend on y.tab.c and lex.yy.c.
# Make uses the dependencies to figure out what rules must be run when
# a file has changed.

lex.yy.o: y.tab.h lex.yy.c 
y.tab.o: lex.yy.c y.tab.c 
	$(CC) -c y.tab.c lex.yy.c 


## This rule will use yacc to generate the files y.tab.c and y.tab.h

y.tab.c y.tab.h: $(YACC_FILE)
	$(YACC) $(YACC_FILE)

## this is the make rule to use lex to generate the file lex.yy.c

lex.yy.c: $(LEX_FILE)
	$(LEX) $(LEX_FILE)

## Make clean will delete all of the generated files so we can start
## from scratch

clean:
	-rm -f *.o lex.yy.c *.tab.*  $(OUT) *.output