%{
#include <stdio.h>
#include <string.h>

char *heater="default";

%}

%token CHAR INT FLOAT DOUBLE BOOL ID NUMBER CONST IF RET WHILE 

%%

exp:      dic ';'
        | op  ';'
//        | cmd ';'
//        | ass ';'
;

dic:      type ID 
        | type CONST
;

type: CHAR | INT | FLOAT | DOUBLE | BOOL

;

op:       ID '+' ID
        | ID '-' ID
        | ID '*' ID
        | ID '/' ID
        | ID '<' ID
        | ID '>' ID

;

%%


yyerror(char *s)
{
  printf("%s",s);
}


main()
{
 printf("\nEnter the Expression: ");
 yyparse();
}

