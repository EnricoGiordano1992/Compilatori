/* Un lexer che simula il comando wc (word count) di UNIX.
Stampa il numero di linee, parole e caratteri presenti 
in un file (per default lex legge dallo standard input).
Si noti l'uso di definizioni per i pattern */

%{
    int c=0, w=0, l=0;
%}
word [^ \t\n]+
eol  \n	
%%
{word} {w++; c+=yyleng;};
{eol}  {c++; l++;}
.      {c++;}
%%
main()
{
	yylex();
	printf("%d %d %d\n", l, w, c);
}
