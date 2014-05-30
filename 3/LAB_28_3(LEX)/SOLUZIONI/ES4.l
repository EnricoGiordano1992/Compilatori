/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <math.h>
%}

DIGIT    [0-9]
ID       [a-z][a-z0-9]*
CONST	 [A-Z]*

%%

program	    {
		printf("Iniziato il programma\n");
	    }

integer|const|var|array"["*"]"|of|float		{
						printf("parola chiave di variabile: %s\n", yytext);
						}

{CONST}			{
			printf("costante: %s\n", yytext);
			}

Writeln|Readln		{
			printf("funzione: %s\n", yytext);
			}

"("|")"|";"|"."|","|"'"|"["|"]"		{
					printf("caratteri speciali: %s\n", yytext);
					}

{DIGIT}+    {
            printf( "Intero: %s (%d)\n", yytext,
                    atoi( yytext ) );
            }

{DIGIT}+"."{DIGIT}*        {
            printf( "Float: %s (%g)\n", yytext,
                    atof( yytext ) );
            }

if|then|begin|end|procedure|function        {
            printf( "Parola chiave: %s\n", yytext );
            }

{ID}        printf( "Identificatore: %s\n", yytext );

"+"|"-"|"*"|"/"|"="|":"|">"|"<"   printf( "Operatore: %s\n", yytext );

"{"[^}\n]*"}"     /* elimina i commenti */

[ \t\n]+          /* elimina spazi bianchi */

.           printf( "Carattere sconosciuto: %s\n", yytext );

%%

main( argc, argv )
int argc;
char **argv;
    {
    ++argv, --argc;  /* skip over program name */
    if ( argc > 0 )
            yyin = fopen( argv[0], "r" );
    else
            yyin = stdin;

	printf("\n****************** Scanner di Pascal ******************* \n");

    yylex();
    }
