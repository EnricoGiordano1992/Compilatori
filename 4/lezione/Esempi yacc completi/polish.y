%{
yyerror (char *s)
{
    printf("MyError: %s\n", s);
}
yywrap()
{
    return 1;
}
main()
{
    yyparse();
}
%}
%token NUMBER PLUS MULT NEWLINE
%%
input:
      | input line
;
line:  NEWLINE
      | exp NEWLINE { printf("\t%d\n", $1); }
;
exp:  exp exp MULT { $$ = $1 * $2; }
        | exp exp PLUS { $$ = $1 + $2; }
        | NUMBER {$$ = $1; }
;
%%