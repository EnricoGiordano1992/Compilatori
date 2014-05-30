/* Un lexer che stampa tutti i tag HTML presenti in un file 
(per default lex legge dallo standard input) */

%{
#include <stdio.h>
%}
%%
"<"[^>]*> { printf("VALUE: %s\n", yytext); }
.|\n     ;
%%
main()
{
        yylex();
}