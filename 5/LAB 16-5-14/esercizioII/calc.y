%{
#include <stdio.h>
%}
%token NUMBER PLUS MULT NEWLINE MIN DIV APERTA CHIUSA
%%
input:
    | input line
;
line: NEWLINE
    | exp NEWLINE { printf("\t%d\n", $1); }
;
exp:  exp MULT exp { $$ = $1 * $3; }
    | exp PLUS exp { $$ = $1 + $3; }
    | exp MIN exp { $$ = $1 - $3;}
    | exp DIV exp { $$ = $1 / $3;}
    | APERTA exp CHIUSA { $$ = $2; }
    | NUMBER {$$ = $1; }
;
%%

int yyerror (char *s)
{
    printf("MyError: %s\n", s);
}
int yywrap(void)
{
 return 0;
}
int main()
{
    yyparse();
}
