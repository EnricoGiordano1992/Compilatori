/* programma Lex che copia un file sostituendo ogni
sequenza non vuota di spazi bianchi da un singolo
spazio bianco */

%{
%}
%option noyywrap
%%

[ ]+ {printf(" ");}

%%

int main(int argc, char **argv)
{
yylex();
printf("\n");
}
