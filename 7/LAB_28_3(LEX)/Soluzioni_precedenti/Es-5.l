/* scrivere un programma Lex che converte un file trasformando
ogni parola nel seguente modo:
- se la prima lettera e' una consonante, allora questa viene spostata
alla fine e viene aggiunto `ay'
- se la prima lettera e' una vocale, allora si riscrive la stessa 
parola aggiungendo alla fine `ay'  */

%option noyywrap
%%
^[A-Za-z]{-}[aeiou][A-Za-z0-9_]* { printf ("%s%cay", ++yytext, yytext[0]);}
^[AaEeIiOoUu][A-Za-z0-9_]* { printf ("%say", yytext); }
"quit" {return 0;}

%%
main (argc, argv)
          int argc; char **argv;
          {
          	++argv, --argc; /* così ignoriamo il nome del programma lanciato */
          	if (argc > 0) { 
          		yyin = fopen (argv[0], "r");
          	}
          	else { 
          		printf ("Leggo da tastiera!\n"); yyin = stdin; 
          	}
          	yylex ();
          }

