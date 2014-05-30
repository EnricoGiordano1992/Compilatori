%{
#include <stdio.h>
%}
%token NUMBER PLUS MULT NEWLINE MIN DIV
%%
input:
    | input line
;
line: NEWLINE
    | exp NEWLINE { printf("\t%d\n", $1); }
;
exp:  exp exp MULT { $$ = $1 * $2; }
    | exp exp PLUS { $$ = $1 + $2; }
    | exp exp MIN { $$ = $1 - $2;}
    | exp exp DIV { $$ = $1 / $2;}
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
