%{
#include <stdio.h>
#include <string.h>

char name_table[1000] = {'\0'};
char type_table[1000] = {'\0'};
int i = 0;
int j = 0;

%}

%token CHAR INT FLOAT DOUBLE BOOL ID NUMBER CONST IF RET WHILE PLUS MIN DIV MUL MINMIN MAXMAX P_VIRG OPEN CLOSE EQ TAKE

%%

expression: | expression exp;

exp:      dic close
        | op close
        | cmd close
	| nop
        | ass close
;

nop: 	  ID
;

close:	| P_VIRG
;

dic:      type ID {name_table[i] = (char)$1; type_table[i++] = (char)$2; printf("aggiunto %c\n", name_table[i-1]);}
        | type CONST
;

type: CHAR | INT | FLOAT | DOUBLE | BOOL

;

op:       ID PLUS arg
        | ID MIN arg
        | ID MUL arg
        | ID DIV arg
        | ID MINMIN arg
        | ID MAXMAX arg
	| ID EQ arg
;

arg: ID | NUMBER

cmd:	  IF OPEN exp CLOSE
	| WHILE OPEN exp CLOSE
	| RET ID P_VIRG
	| RET NUMBER P_VIRG

;

ass: ID TAKE arg

%%


yyerror(char *s)
{
  printf("error: %s",s);
}


main()
{
 printf("\nEnter the Expression: ");
 yyparse();
}

