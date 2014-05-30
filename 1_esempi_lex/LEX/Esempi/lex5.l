/* Un lexer che stampa solo le parole seguite da un 
simbolo di punteggiatura, (ma non il simbolo) 
(per default lex legge dallo standard input) */

%{
#include <stdio.h>
%}
%%
[a-zA-Z]+/[,;:".?!] { printf("Found: %s\n", yytext); }
.|\n     ;
%%
main()
{
	yylex();
}