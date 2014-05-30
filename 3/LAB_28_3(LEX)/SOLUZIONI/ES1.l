/* programma Lex che sostituisce le vocali con le lettere */

%{
#include <stdio.h>
#define FLOAT "float"
%}

%%

A {printf("E");}
a {printf("e");}
E {printf("A");}
e {printf("a");}
i {printf("o");}
I {printf("O");}
O {printf("I");}
o {printf("i");}
U {printf("A");}
u {printf("e");}

%%

int main(int argc, char **argv)
{
yylex();
}
