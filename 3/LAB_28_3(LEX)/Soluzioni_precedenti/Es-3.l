/* programma Lex che copia un programma Java sostituendo ogni
istanza della parola chiave `float' con `double' */

%{
#include <stdio.h>
#define FLOAT "float"
%}

%%

float {printf("double");}

%%

int main(int argc, char **argv)
{
yylex();
}
