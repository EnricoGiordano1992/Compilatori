/* Un lexer che stampa tutti i numeri presenti in un file 
(per default lex legge dallo standard input) */

%{
#include <stdio.h>
%}

%%

[0-9]+ { printf("%s\n", yytext); }
.|\n     ;

%%

main()
{
        yylex();
}